//Constants
const express=require('express');
const bodyParser=require('body-parser');
const mysql=require('mysql');
const handlebars=require('express-handlebars');
const app=express();
const urlencodeParser=bodyParser.urlencoded({extended:false});
const sql=mysql.createConnection({
   host:'localhost',
   username:'adminDR',
   user:'adminDR',
   password:'si-5fElc@87.]PAj',
   port:3306
});
sql.query("use drip_restes");


app.engine("handlebars",handlebars({defaultLayout:'main'}));
app.set('view engine','handlebars');
app.use('/css',express.static('css'));
app.use('/js',express.static('js'));
app.use('/img',express.static('img'));

app.get("/",function(req,res){
   res.render('index');
});

app.get("/inserir", function(req,res){
   res.render('inserir');
});

app.get("/select/:cliente_id?",function(req,res){if(!req.params.id){sql.query("select * from cliente",function(err,results,fields){res.render('select',{data:results});});}else{sql.query("select * from cliente where id=? order by id asc",[req.params.id],function(err,results,fields){res.render('select',{data:results});});}});

app.get('/deletar/:cliente_id',function(req,res){
   sql.query("delete from cliente where cliente_id=?",[req.params.cliente_id]);
   res.render('deletar');
});

app.get("/update/:cliente_id",function(req,res){
   sql.query("select * from cliente where cliente_id=?",[req.params.cliente_id],function(err,results,fields){
       res.render('update',{cliente_id:req.params.cliente_id,nome_cliente:results[0].nome_cliente,address:results[0].address,phone:results[0].phone,email:results[0].email,pass:results[0].pass,bornDate:results[0].bornDate,rg:results[0].rg,cpf:results[0].cpf});
   });
});

app.post("/controllerUpdate",urlencodeParser,function(req,res){
   sql.query("update cliente set nome_cliente=?, endereco_cliente=?, cel_cliente=?, email_cliente=?, senha_cliente=?, datanasc_cliente=?, rg_cliente=?, cpf_cliente=? where cliente_id=?",[req.body.nome,req.body.address,req.body.phone,req.body.email,req.body.pass,req.body.bornDate,req.body.rg,req.body.cpf,req.body.id]);
      res.render('controllerUpdate');
});

app.post("/controllerForm",urlencodeParser,function(req,res){
   sql.query("insert into cliente values (?,?,?,?,?,?,?,?,?)",[req.body.id,req.body.nome,req.body.address,req.body.phone,req.body.email,req.body.pass,req.body.bornDate,req.body.rg,req.body.cpf]);
   res.render('controllerForm', {nome_cliente:req.body.nome_cliente});
});

//Start server
app.listen(3000,function(req,res){
   console.log('Servidor está rodando!');
});