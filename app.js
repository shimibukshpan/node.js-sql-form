const port = 4000;

const sql = require('./modules/sql');

const Joi = require("joi");
const contactSchema = Joi.object({
    firstname: Joi.string().required().min(2).max(70),
    lastname: Joi.string().required().min(2).max(70),
    email: Joi.string().required().email(),
    phone: Joi.string().min(9),
    submit: Joi.string()
  });


const express = require('express');
let app = express();
app.set('view engine', 'ejs');

const path = require("path");
const publicDirectoryPath = path.join(__dirname, "./mySite");
app.use(express.static(publicDirectoryPath));

const bodyParser = require('body-parser');
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

app.get('', (req, res) => {
    console.log(req.query);
    res.render('index');
});

app.post('', (req, res) => {
    const {error, value} = contactSchema.validate(req.body);
    if(error){
        res.send(error);
    }
    else{
        sql.query(`INSERT INTO Persons VALUES (NULL, '${req.body.firstname}', '${req.body.lastname}', '${req.body.email}','${req.body.phone}');`,function (error, results, fields) {
        if (error) throw error;
        console.log(results);
        console.log(fields);
      }
    );
    res.render("savedform")
    }
});

app.get("/users", (req, res) => {
    sql.query('SELECT * FROM Persons', function (error, results, fields) {
        if (error) throw error;
        res.render('displayUsers',{userArr:results});
      });
})

app.listen(port, () => console.log('app listening on port '+ port));
