const { Router } = require("express");
const welcomeControl = require('../controls/welcomeControl');
const router = Router();

router.get("/", welcomeControl.view_homepage); // -ok-
router.get("/about", welcomeControl.view_aboutpage); // -ok-
router.get('/signup', welcomeControl.view_signuppage); // -ok-
router.get('/login', welcomeControl.view_loginpage); // -ok- 
router.get('/conversations', welcomeControl.view_conversations); // -!-

module.exports = router;