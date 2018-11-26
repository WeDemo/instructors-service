/* eslint-disable prefer-arrow-callback */
require('newrelic');
const express = require('express');
const path = require('path');
const pgp = require('pg-promise')();

const config = {
  user: 'diana',
  host: 'localhost',
  database: 'udemy',
  password: null,
  port: 5432,
};

const db = pgp(config);

const app = express();

app.use('/courses', express.static(path.join(__dirname, '/../client/dist')));

app.get('/courses/:id', (req, res) => {
  res.sendFile(path.join(__dirname, '/../client/dist/index.html'));
});

app.get('/:id/instructors', (req, res) => {
  const instQuery = ` select
                        *
                      from
                        instructors
                      inner join
                        courses_inst
                      on
                        course_id = ${req.params.id} and
                        instructors.id = courses_inst.inst_id;
                      `;
  db.any(instQuery)
    .then((response) => {
      //console.log(response);
      //console.log('first query ok');
      let result = [];
      let count = 0;
      response.map((row) => {
        const courseQuery = `
                            select
                              *
                            from
                              courses
                            inner join
                              courses_inst
                            on
                              inst_id = ${row.id} and
                              courses.id = courses_inst.course_id;
                            `;
        db.query(courseQuery)
          .then((resp) => {
            //console.log(resp);
            //console.log('followup query ok');
            count += 1;
            let instWithCourses = Object.assign(row, { courseInfo: resp });
            result.push(instWithCourses);
            if (count === response.length) {
              res.status(201);
              res.send(result);
            }
          })
          .catch((error) => {
            console.log('followup error', error);
            res.status(500);
            res.send(error);
          });
      });
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
