const express = require('express');
const mysql = require('mysql');

const PORT = 3000;
const HOST = '0.0.0.0';

const app = express();

const connection = mysql.createConnection({
    host: 'mysql',
    user: 'root',
    password: 'teste',
    database: 'alunosdb'
});

connection.connect();

app.get('/', (req, res) => {
    connection.query('SELECT * FROM alunos', (error, results) => {
        if(error){
            throw error;
        }
 
        res.send(results.map(aluno => ({ id: aluno.id, name: aluno.nome, email: aluno.email})));
    });
});

app.listen(PORT, HOST);