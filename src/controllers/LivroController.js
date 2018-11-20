
exports.formularioInserir = (req, res) => {
  res.render('livro/novo');
  // res.send(`
  //   <h1>Inserir novo Livro</h1>
  //   <form action='/livro/inserir' method='post'>
  //     <input type='submit'>
  //   </form>
  // `);
}

exports.inserir = (req, res) => {
  // console.log(req);
  res.send(req.body.titulo);
}

exports.deletar = (req, res) => {
  res.send(req.params.id);
  // res.send("OK");
}
