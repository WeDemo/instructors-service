/* eslint-disable prefer-arrow-callback */
require('newrelic');
const express = require('express');
const path = require('path');
const pgp = require('pg-promise')();

const config = {
  user: 'power_user',
  host: 'ec2-54-67-6-144.us-west-1.compute.amazonaws.com',
  database: 'udemy',
  password: 'iamme!1',
  port: 5432,
};

const db = pgp(config);

const app = express();

app.use('/courses', express.static(path.join(__dirname, '/../client/dist')));

app.get('/courses/:id', (req, res) => {
  res.sendFile(path.join(__dirname, '/../client/dist/index.html'));
});

app.get('/:id/instructors', (req, res) => {
  const instQuery = ` select courses.name as course_name, courses.rating as course_rating, courses.reviews as course_reviews, courses.lectures, courses.hours, courses.full_price, courses.disc_price, courses.photo_url as course_photo, b.name as inst_name, b.rating as inst_rating, b.reviews as inst_reviews, b.students, b.courses, b.title, b.description, b.photo_url as inst_photo from courses inner join (select courses_inst.id, courses_inst.course_id as cid, courses_inst.inst_id, a.* from courses_inst inner join (select * from instructors inner join courses_inst on courses_inst.course_id = ${req.params.id} and instructors.id = courses_inst.inst_id) as a on courses_inst.inst_id=a.inst_id) as b on courses.id=b.cid;`;
  db.any(instQuery)
    .then((response) => {
      let result = [];
      let insts = [];
      response.map((row) => {
        if (!insts.includes(row.inst_name)) {
          let course = {};
          course.name = row.course_name;
          row.course_name = undefined;
          course.rating = row.course_rating;
          row.course_rating = undefined;
          course.reviews = row.course_reviews;
          row.course_reviews = undefined;
          course.lectures = row.lectures;
          row.lectures = undefined;
          course.hours = row.hours;
          row.hours = undefined;
          course.full_price = row.full_price;
          row.full_price = undefined;
          course.disc_price = row.disc_price;
          row.disc_price = undefined;
          course.photo_url = row.course_photo;
          row.course_photo = undefined;

          insts.push(row.inst_name);
          if (row.courseInfo) {
            row.courseInfo.push(course);
          } else {
            row.courseInfo = [];
            row.courseInfo.push(course);
          }
          result.push(row);
        }
      });
      res.status(201);
      res.send(result);
      // //console.log(response);
      // //console.log('first query ok');
      // let result = [];
      // let count = 0;
      // response.map((row) => {
      //   const courseQuery = `
      //                       select
      //                         *
      //                       from
      //                         courses
      //                       inner join
      //                         courses_inst
      //                       on
      //                         inst_id = ${row.id} and
      //                         courses.id = courses_inst.course_id;
      //                       `;
      //   db.query(courseQuery)
      //     .then((resp) => {
      //       //console.log(resp);
      //       //console.log('followup query ok');
      //       count += 1;
      //       let instWithCourses = Object.assign(row, { courseInfo: resp });
      //       result.push(instWithCourses);
      //       if (count === response.length) {
      //         res.status(201);
      //         res.send(result);
      //       }
      //     })
      //     .catch((error) => {
      //       console.log('followup error', error);
      //       res.status(500);
      //       res.send(error);
      //     });
      // });
    })
    .catch((error) => {
      console.log('overall error', error);
      console.log(req.originalUrl);
      res.status(500);
      res.send(error);
    });
});

// app.post('/instructors', (req, res) => {
//   newInstructor = req.body;
//   return mysql.sequelize.authenticate()
//     .then(() => {
//       return mysql.Instructors.create(newInstructor)
//     })
// })

// app.patch('/instructors/:id', (req, res) => {
//   return mysql.sequelize.authenticate()
//     .then(() => {
//       return mysql.Instructors.update({
//         req.body
//       }, {
//         returning: true,
//         where: {id: req.params.id} 
//       })
//     })
// })

// app.delete('/instructors/:id', (req, res) => {
//   return mysql.sequelize.authenticate()
//     .then(() => {
//       return mysql.Instructors.destroy({
//         returning: true,
//         where: {id: req.params.id} 
//       })
//     })
// })

app.listen(8081, () => {
  console.log("listening on port 8081");
});
