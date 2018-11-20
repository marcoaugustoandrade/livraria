const express = require('express');
const router = express.Router();
const livroController = require('../controllers/LivroController');

// Página inicial com a listagem dos livros
router.get('/', );

// Página de detalhe do livro
router.get('livro/detalhe/:id', );

// Pesquisa de livros
router.get('/livro/pesquisar/f/:filtro?', );

// Inserção de novos livros
router.get('/livro/inserir', livroController.formularioInserir);
router.post('/livro/inserir', livroController.inserir);

// Alteração de livros
router.get('/livro/alterar/:id', );
router.put('/livro/alterar/:id', );

// Exclusão de livros
router.get('/livro/deletar/:id', livroController.deletar);

module.exports = router;
