const mysql = require('./sqlizeIndex.js');
const courseData = require('./genCourses.js');
const inst = require('./genInstructors.js');
const joinInfo = require('./genJoin.js');
const courseList = require('./courseList.js');

const numInstructors = 30;
const instData = inst.instructorGenerator(numInstructors);
const joinData = joinInfo(courseList.length, numInstructors);

mysql.sequelize.sync()
  .then(() => {
    mysql.Courses.bulkCreate(courseData);
  })
  .then(() => {
    mysql.Instructors.bulkCreate(instData);
  })
  .then(() => {
    mysql.Join.bulkCreate(joinData);
  })
  .then(() => {
    const promises = [];
    for (let i = 1; i <= numInstructors; i += 1) {
      const newPromise = mysql.Join.findAll({ where: { inst_id: i } })
        .then(courses => mysql.Courses.findAll({
          where: { id: [courses.map(course => course.course_id)] },
        }))
        .then((data) => {
          const update = inst.updateInstructor(data);
          mysql.Instructors.update(update, { where: { id: i } });
        });
      promises.push(newPromise);
    }
    return Promise.all(promises);
  })
  .catch((err) => { console.log(`Error seeding database: ${err}`); })
  .then(() => { process.exit(); });
