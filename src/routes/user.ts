import { Router } from "express";
import { CargarDatosOfExcel, ReadUserAll, ReadUserAllId,  } from "../controllers/user";
import multer from "multer";
import { storage } from '../midlewares/storage';
import validateToken from "../midlewares/token";


const router = Router();
const upload = multer({ storage });

router.get("/api/user/readAll/", validateToken, ReadUserAll)
router.get("/api/user/readAllId/:categoryId", validateToken, ReadUserAllId)


router.post('/api/user/create', upload.single('excel'), validateToken, CargarDatosOfExcel);


export default router