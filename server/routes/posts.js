import express from "express";
import { verifyToken } from "../middleware/auth.js";
import { createPost, getFeedPosts, getUserPosts, likePost } from "../controllers/posts.js";

const router = express.Router();

//CREATE
router.post("/", verifyToken, createPost);

//READ
router.get("/", verifyToken, getFeedPosts);
router.get("/:userId/posts", verifyToken, getUserPosts);

//UPDATE
router.patch("/:id/like", verifyToken, likePost);

export default router;
