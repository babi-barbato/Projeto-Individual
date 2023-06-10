var express = require("express");
var router = express.Router();

var usuarioController = require("../controllers/usuarioController");

router.get("/", function (req, res) {
    usuarioController.testar(req, res);
});

router.get("/listar", function (req, res) {
    usuarioController.listar(req, res);
});

router.post("/cadastrar", function (req, res) {
    usuarioController.cadastrar(req, res);
})

router.post("/autenticar", function (req, res) {
    usuarioController.entrar(req, res);
});

router.post("/ordemJogadores", function (req, res) {
    usuarioController.ordemJogadores(req, res);
});

router.post("/feedback", function (req, res) {
    usuarioController.feedback(req, res);
});

router.post("/mudarSenha", function (req, res) {
    usuarioController.mudarSenha(req, res);
});



module.exports = router;