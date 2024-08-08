// models/User.js
const { DataTypes } = require('sequelize');
const sequelize = require('../db/config');

const User = sequelize.define('User', {
  // Model attributes are defined here
  firstName: {
    type: DataTypes.STRING,
    allowNull: false
  },
  lastName: {
    type: DataTypes.STRING
    // allowNull defaults to true
  }
  // Other attributes can be defined here
});

module.exports = User;
