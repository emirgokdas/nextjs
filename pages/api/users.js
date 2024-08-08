// pages/api/users.js
import connectDB from '../../db';
import User from '../../models/User';

export default async function handler(req, res) {
  await connectDB();

  if (req.method === 'GET') {
    // Fetch all users
    const users = await User.findAll();
    res.status(200).json(users);
  } else if (req.method === 'POST') {
    // Create a new user
    const { firstName, lastName } = req.body;
    const newUser = await User.create({ firstName, lastName });
    res.status(201).json(newUser);
  } else {
    res.setHeader('Allow', ['GET', 'POST']);
    res.status(405).end(`Method ${req.method} Not Allowed`);
  }
}
