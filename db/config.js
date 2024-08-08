// db/config.js
import { Sequelize } from 'sequelize';

const sequelize = new Sequelize('carepulse', 'root', '@3Mir1995*', {
  host: 'localhost',
  dialect: 'mysql',
  dialectModule: require('mysql2'),

});

export default sequelize;
