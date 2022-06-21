const { Router } = require("express");
const infoControls = require("../controls/infoControls");
const router = Router();


router.get('/all-users', infoControls.view_users); // -ok-

router.get('/user/:id', infoControls.view_user); // -ok-

router.get('/all-teams', infoControls.view_teams); // -ok-

router.get('/teams/:teamName', infoControls.view_team); // -ok-

router.get('/all-users/players', infoControls.view_players); // -ok-

router.get('/all-users/coaches', infoControls.view_coaches); // -ok-

router.get('/messages/:id', infoControls.view_message); // -ok-

module.exports = router;