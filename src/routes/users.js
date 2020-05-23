const express = require('express');
const router = express.Router();
const cors = require('cors')
const mysqlConnection = require('../database.js');

// LOGIN
router.post("/login", cors(), function (req, res) {
  var email = req.body.email;
  var password = req.body.password;
  mysqlConnection.query("SELECT token FROM  users WHERE email = ? AND password = ?", [email, password], function (err, rows, fields) {
    if (rows.length > 0) {
      if (err) throw err;
      res.status("200").send(rows);
    } else {
      res.send({ status: 404 });
    }
  });
});
// PROFILE
router.post("/profile", function (req, res) {
  var token = req.body.token;
  mysqlConnection.query("SELECT iduser, name, email, phone, address, photo, age FROM  users WHERE token = ?", [token], function (err, rows, fields) {
    if (rows.length > 0) {
      if (err) throw err;
      res.status("200").send(rows);
    } else {
      res.send({ status: 404 });
    }
  });
});
// GET all users
router.get('/users', (req, res) => {
  mysqlConnection.query('SELECT * FROM users WHERE status = 1', (err, rows, fields) => {
    if (!err) {
      res.json(rows);
    } else {
      console.log(err);
    }
  });
});
// UPDATE USER
router.put("/editProfile", function (req, res) {

  mysqlConnection.query(
    `UPDATE users SET ? WHERE iduser = ${req.body.iduser}`,
    req.body,
    (error, result) => {
      if (error) throw error;
      res.send(`User updated successfully:${req.body.iduser}`);
    }
  );
});
// DELETE USER
router.post('/deleteUser', (req, res) => {
  var userid = req.body.userid;
  mysqlConnection.query('UPDATE users SET status = 0 WHERE iduser = ?', [userid], (err, rows, fields) => {
    if (err) throw err;
    res.status("200").send(rows);
  });
});
// Clients
// GET all clients active
router.get('/clients', (req, res) => {
  mysqlConnection.query('SELECT * FROM clients WHERE status = 1', (err, rows, fields) => {
    if (!err) {
      res.json(rows);
    } else {
      console.log(err);
    }
  });
});
// 
router.get('/allClients', (req, res) => {
  mysqlConnection.query('SELECT * FROM clients', (err, rows, fields) => {
    if (!err) {
      res.json(rows);
    } else {
      console.log(err);
    }
  });
});

router.post('/clientTrash', (req, res) => {
  var idclient = req.body.idclient;
  mysqlConnection.query('UPDATE clients SET status = 0 WHERE idclient = ?', idclient, (err, rows, fields) => {
    if (!err) {
      res.json(rows);
    } else {
      console.log(err);
    }
  });
});

module.exports = router;
