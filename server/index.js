/* eslint-disable prefer-arrow-callback */
const express = require('express');
const path = require('path');
const mysql = require('../database/sqlizeIndex.js');

const app = express();

app.use(express.static(path.join(__dirname, '/../client/dist')));
app.get('/instructors/:id', (req, res) => {
  mysql.sequelize.authenticate()
    .then(function getInstructorIds() {
      return mysql.Join.findAll({ where: { course_id: req.params.id } });
    })

    .then(function getAllInstructors(data) {
      const info = [];
      const promises = [];

      data.forEach(function getSingleInstructor(inst) {
        const instructor = ({
          id: inst.dataValues.inst_id,
          instInfo: null,
          courseInfo: null,
        });
        const newPromise = mysql.Instructors.findOne({ where: { id: inst.dataValues.inst_id } })

          .then(function getInstructorInfo(instData) {
            instructor.instInfo = instData;
            return mysql.Join.findAll({ where: { inst_id: inst.dataValues.inst_id } });
          })

          .then(function getCourseInfo(courses) {
            return mysql.Courses.findAll({
              where: {
                id: [courses
                  .map(course => course.course_id)
                  .filter(c => c != req.params.id)],
              },
            });
          })

          .then(function pushInfo(courseData) {
            instructor.courseInfo = courseData;
            info.push(instructor);
          });

        promises.push(newPromise);
      });
      return Promise.all(promises)
        .then(() => res.send(info));
    });
});

app.listen(3002, () => {});
