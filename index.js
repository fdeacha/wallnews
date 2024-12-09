// index.js
const express = require("express");
const mysql = require("mysql2");
const bodyParser = require("body-parser");

const app = express();
const PORT = 3000;

// Configurar EJS
app.set("view engine", "ejs");
app.use(express.static("public"));
// Middleware
app.use(bodyParser.urlencoded({ extended: true }));
app.use(express.static("public"));

// Conexión a la base de datos
const db = mysql.createConnection({
  host: "localhost",
  user: "root",  
  password: "", 
  database: "portal_noticias", 
});

db.connect((err) => {
  if (err) throw err;
  console.log("Conectado a la base de datos");
});

app.get("/noticia/:id", (req, res) => {
    const query = "SELECT * FROM noticias WHERE id = ?";
    db.query(query, [req.params.id], (err, result) => {
      if (err || result.length === 0) {
        res.status(404).send("Noticia no encontrada");
      } else {
        res.render("detalle", { noticia: result[0] });
      }
    });
  });

// Rutas
app.get("/", (req, res) => {
    console.log("get pagina....");
  const query = "SELECT * FROM noticias";
  db.query(query, (err, results) => {
    if (err) throw err;
    console.log("results %s", results.toString());
    res.render("index", { noticias: results });
  });
});

// Iniciar servidor
app.listen(PORT, () => {
  console.log(`Servidor corriendo en http://localhost:${PORT}`);
});