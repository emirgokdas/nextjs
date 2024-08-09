// db/config.js
import { Sequelize } from 'sequelize';

const sequelize = new Sequelize('carepulse', 'root', '', {
  host: 'localhost',
  dialect: 'mysql',
  dialectModule: require('mysql2'),

});

export default sequelize;
