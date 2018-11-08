const Sequelize = require('sequelize');

const sequelize = new Sequelize('inst', 'udemo', 'DBPassword', {
  dialect: 'mysql',
  host: 'aa1nsis7r4ymq1v.cc5obfk5ms0b.us-east-2.rds.amazonaws.com',
  port: 3306,
  logging: console.log,
  maxConcurrentQueries: 100,
  dialectOptions: {
    ssl: 'Amazon RDS',
  },
  pool: { maxConnections: 5, maxIdleTime: 30 },
  language: 'en',
});

const Instructors = sequelize.define('instructors', {
  id: {
    type: Sequelize.INTEGER(6),
    autoIncrement: true,
    primaryKey: true,
  },
  inst_name: Sequelize.STRING(50),
  rating: Sequelize.DECIMAL(2, 1),
  reviews: Sequelize.INTEGER(7),
  students: Sequelize.INTEGER(8),
  title: Sequelize.STRING,
  blurb: Sequelize.TEXT,
  courses: Sequelize.INTEGER(4),
  photo_url: Sequelize.STRING(255),
}, {
  timestamps: false,
  underscored: true,
});

const Courses = sequelize.define('courses', {
  id: {
    type: Sequelize.INTEGER(6),
    autoIncrement: true,
    primaryKey: true,
  },
  course_name: Sequelize.STRING(255),
  rating: Sequelize.DECIMAL(2, 1),
  reviews: Sequelize.INTEGER(7),
  lectures: Sequelize.INTEGER(4),
  num_hours: Sequelize.INTEGER(4),
  full_price: Sequelize.DECIMAL(6, 2),
  disc_price: Sequelize.DECIMAL(6, 2),
  photo_url: Sequelize.STRING(255),
}, {
  timestamps: false,
  underscored: true,
});

const Join = sequelize.define('joins', {
  course_id: Sequelize.INTEGER(6),
  inst_id: Sequelize.INTEGER(6),
}, {
  timestamps: false,
  underscored: true,
});

Join.belongsTo(Instructors, { foreignKey: 'inst_id' });
Join.belongsTo(Courses, { foreignKey: 'course_id' });

module.exports = {
  Instructors, Courses, Join, sequelize,
};
