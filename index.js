require("dotenv").config();
const { Pool } = require('pg');
const express = require("express");
const cors = require("cors");
const ejs = require("ejs");
const app = express();
const { pool } = require("./db/config");
const welcomeRoute = require("./routes/welcomeRoute");
const infoRoute = require('./routes/infoRoute');

pool.connect(async (err) => {
    try {await console.log("Connected to DataBase")} 
    catch (err) {console.log(err)}
  }); // Database connected.

app.set("view engine", "ejs");  // -this-  Allows us to see the ejs HTML templates.
app.use(express.json());  // -this-  Allows for the API to work
app.use(express.static("public")); // -this-  Allows for the public directory to be easily accessed on the server.

app.use(welcomeRoute);
app.use(infoRoute);

app.listen(process.env.PORT || 3000, () => {
    console.log("Server operational at port 3000");
  }); // -ok-  Server is running on port 3000