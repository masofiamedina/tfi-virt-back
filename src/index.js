const express = require('express');
const pool = require('../src/database');

const app = express();

app.set('port', process.env.PORT || 4000);

app.get('/', async (req, res) => {
    const categoria = await pool.query('SELECT * FROM categoria');  
    console.log(categoria);
    return res.json(categoria);
})

app.get('/entrada', async (req, res) => {
    const entrada = await pool.query('SELECT * FROM entrada');
    console.log(entrada);
    return res.json(entrada);
})

app.listen(app.get('port'), () => {
    console.log('Server en puerto', app.get('port'));
})