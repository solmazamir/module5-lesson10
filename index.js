const mysql = require('mysql');
const express = require('express');
const app = express();
const connection = mysql.createConnection({
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: 'root',
    database: 'task'
});
connection.connect((err) => {
    if (!err) {
        console.log("SUCCESS");
    } else {
        console.log(err)
    }
});
app.get('/task', (req, res) => {
    connection.query('SELECT * FROM tasks;',
        (err, data) => {
            if (err) return res.status(500);
            res.json(data);
        })
});
app.get('/task/:id', (req, res)=>{
    connection.query(`SELECT * FROM tasks WHERE id=${req.params.id};`,
        (err, data) => {
            if (err) return res.status(500);
            res.json(data);
        })
});
app.listen(3000, function () {
    console.log('Example app listening on port 3000!');
});