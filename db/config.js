// db/config.js
const { Sequelize } = require('sequelize');

const sequelize = new Sequelize('nextjs', 'root', '*8sexOdr', {
  host: 'localhost',
  dialect: 'mysql',
});

module.exports = sequelize;
