import { Router } from "express";
import { Read } from "../controllers/marketing";
import validateToken from "../midlewares/token";

const router = Router();

router.get("/api/marketing/readAll/", validateToken, Read)




export default router