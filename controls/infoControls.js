const { pool } = require('../db/config');

module.exports.view_users = async (req, res) => {
    const allUsers = await pool.query("SELECT * FROM users;");
    res.json(allUsers.rows)
} // -ok- shows all users

module.exports.view_user = async (req, res) => {
    const user = await pool.query(`SELECT * FROM users WHERE id=$1`, [req.params.id]);
    res.json(user.rows)
} // -ok- shows a user

module.exports.view_teams = async (req, res) => {
    const allLobbies = await pool.query("SELECT * FROM lobby;");
    res.json(allLobbies.rows)
} // -ok- shows all lobbies

module.exports.view_team = async (req, res) => {
const lobby = await pool.query(`SELECT * FROM lobby WHERE name=$1`, [req.params.teamName]);
res.json(lobby.rows)
} // -ok- shows a lobby

module.exports.view_players = async (req, res) => {
    const players = await pool.query(`SELECT * FROM users WHERE admin=false`);
    res.json(players.rows)
} // -ok- shows all the players

module.exports.view_coaches = async (req, res) => {
    const coaches = await pool.query(`SELECT * FROM users WHERE admin=TRUE`);
    res.json(coaches.rows);
} // -ok- shows all the coaches

module.exports.view_message = async (req, res) => {
    const message = await pool.query(`SELECT * FROM messages WHERE id=$1`, [req.params.id]);
    res.json(message.rows)
} // -ok- shows a message

    