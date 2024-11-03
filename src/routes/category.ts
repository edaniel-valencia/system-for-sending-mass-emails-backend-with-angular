import { Router } from "express";
import { ReadUserAll, ReadUserAllId,  } from "../controllers/user";
import multer from "multer";
import { storage } from '../midlewares/storage';
import { ReadCategoryAll } from "../controllers/category";
import validateToken from "../midlewares/token";


const router = Router();
const upload = multer({ storage });

router.get("/api/category/readAll/", validateToken, ReadCategoryAll)




export default router