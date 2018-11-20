require('dotenv').config();
const port = process.env.PORT;
const express = require('express');
const app = express();
// const morgan = require('morgan');
const ejs = require('ejs');
const bodyParser = require('body-parser');

// Configuração
app.use(bodyParser.urlencoded({ extended: false }));

// Arquivos estáticos
app.use('/static', express.static('./public'));

// Templates
app.set('view engine', 'ejs')

// Rotas
const livroRouter = require('./routes/LivroRouter');
app.use('/', livroRouter);

// Logs
// app.use(morgan('combined'));


app.listen(port, () => console.log(`Servidor rodando na porta ${port}`));
