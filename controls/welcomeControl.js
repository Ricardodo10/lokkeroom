module.exports.view_homepage = (req, res) => {res.render("home")} // -this- shows welcome page

module.exports.view_aboutpage = (req, res) => {res.render("about")} // -this- shows the about page

module.exports.view_signuppage = (req, res) => {res.render("signup")}; // -this- shows the sign up page

module.exports.view_loginpage = (req,res) => {res.render("login")}; // -this- shows the log in page

module.exports.view_conversations = (req, res) => {res.render("messageboard")}; // -!-