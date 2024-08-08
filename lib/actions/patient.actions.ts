"use server";

import { parseStringify } from "../utils";
import User from '../../db/models/User';


const { DataTypes } = require('sequelize');
const sequelize = require('../../db/config');
import checkUser from '../../db/controllers/UserController';

// CREATE APPWRITE USER

export const createUser = async (user: { name: string; email: string; phone: string }) => {
  try {
      // Önce veritabanında bu e-posta ile kayıtlı bir kullanıcı olup olmadığını kontrol edin
      const existingUser = await User.findOne({ where: { email: user.email } });

      // Eğer kullanıcı varsa, mevcut kullanıcıyı ve durumu döndürün
      if (existingUser) {
          return parseStringify(existingUser);
      }

      // Eğer kullanıcı yoksa, yeni kullanıcı oluşturun
      const newUser = await User.create({ name: user.name, email: user.email, phone: user.phone });
      return parseStringify(newUser);
  } catch (error: any) {
      console.error("An error occurred while creating or checking the user:", error);
      throw error;
  }
};


// GET USER
export const getUser = async (userId: string) => {
  try {
    const user = await User.findOne({ where: { id: userId } });

    return parseStringify(user);
  } catch (error) {
    console.error(
      "An error occurred while retrieving the user details:",
      error
    );
  }
};

// REGISTER PATIENT
export const registerPatient = async ({
  identificationDocument,
  ...patient
}: RegisterUserParams) => {
  try {
    // Upload file ->  // https://appwrite.io/docs/references/cloud/client-web/storage#createFile
    let file;
    if (identificationDocument) {
      const inputFile =
        identificationDocument &&
        InputFile.fromBlob(
          identificationDocument?.get("blobFile") as Blob,
          identificationDocument?.get("fileName") as string
        );

      file = await storage.createFile(BUCKET_ID!, ID.unique(), inputFile);
    }

    // Create new patient document -> https://appwrite.io/docs/references/cloud/server-nodejs/databases#createDocument
    const newPatient = await databases.createDocument(
      DATABASE_ID!,
      PATIENT_COLLECTION_ID!,
      ID.unique(),
      {
        identificationDocumentId: file?.$id ? file.$id : null,
        identificationDocumentUrl: file?.$id
          ? `${ENDPOINT}/storage/buckets/${BUCKET_ID}/files/${file.$id}/view??project=${PROJECT_ID}`
          : null,
        ...patient,
      }
    );

    return parseStringify(newPatient);
  } catch (error) {
    console.error("An error occurred while creating a new patient:", error);
  }
};

// GET PATIENT
export const getPatient = async (userId: string) => {
  try {
    const patients = await databases.listDocuments(
      DATABASE_ID!,
      PATIENT_COLLECTION_ID!,
      [Query.equal("userId", [userId])]
    );

    return parseStringify(patients.documents[0]);
  } catch (error) {
    console.error(
      "An error occurred while retrieving the patient details:",
      error
    );
  }
};