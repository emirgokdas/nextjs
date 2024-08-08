import { DataTypes, Model } from 'sequelize';
import sequelize from '../../db/config'; // Veritabanı bağlantısını import et

class User extends Model {}

User.init({
 
  name: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  email: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  phone: {
    type: DataTypes.STRING,
    allowNull: false,
  },
}, {
  sequelize,
  modelName: 'User',
  tableName: 'patients',
});

export default User;
