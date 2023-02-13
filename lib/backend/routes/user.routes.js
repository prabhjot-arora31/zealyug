const userController = require("../controllers/users.controller");
const express = require("express");
const { Router } = require("express");
const router = express.Router();
Router.post("/register", userController.register);
Router.post("/login", userController.login);
Router.get("/user-profile", userController.userProfile);
module.exports = router;
