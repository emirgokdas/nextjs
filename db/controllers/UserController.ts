import User from '../models/User';
import { parseStringify } from "../../lib/utils";


async function checkUser(user: { name: string; email: string; phone: string }) {
  try {
      // Kullanıcıyı veritabanında kontrol edin
      const existingUser = await User.findOne({ where: { email: user.email } });
  
      // Eğer kullanıcı varsa, mevcut kullanıcıyı ve durumu döndürün
      if (existingUser) {
          return parseStringify(existingUser);
      }
  
      // Eğer kullanıcı yoksa, yeni kullanıcı oluşturun ve durumu döndürün
      const newUser = await User.create(user);
      return parseStringify(newUser);
  } catch (error: any) {
      console.error("An error occurred while creating or checking the user:", error);
      throw error;
  }
}


export default checkUser;
