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

app.get("/select/:vendedor_id?",function(req,res){if(!req.params.id){sql.query("select * from vendedor",function(err,results,fields){res.render('select',{data:results});});}else{sql.query("select * from vendedor where vendedor_id=? order by vendedor_id asc",[req.params.id],function(err,results,fields){res.render('select',{data:results});});}});

app.get('/deletar/:vendedor_id',function(req,res){
   sql.query("delete from vendedor where vendedor_id=?",[req.params.vendedor_id]);
   res.render('deletar');
});

app.get("/update/:vendedor_id",function(req,res){
   sql.query("select * from vendedor where vendedor_id=?",[req.params.vendedor_id],function(err,results,fields){
       res.render('update',{vendedor_id:req.params.vendedor_id, categoria:results[0].categoria,nome_vendedor:results[0].nome_vendedo,address:results[0].address,phone:results[0].phone,email:results[0].email,pass:results[0].pass,bornDate:results[0].bornDate,rg:results[0].rg,cpf:results[0].cpf});
   });
});

app.post("/controllerUpdate",urlencodeParser,function(req,res){
   sql.query("update vendedor set nome_vendedor=?, categoria_vendedor=?, endereco_vendedor=?, cel_vendedor=?, email_vendedor=?, senha_vendedor=?, datanasc_vendedor=?, rg_vendedor=?, cpf_vendedor=? where vendedor_id=?",[req.body.nome, req.body.categoria, req.body.address,req.body.phone,req.body.email,req.body.pass,req.body.bornDate,req.body.rg,req.body.cpf,req.body.id]);
      res.render('controllerUpdate');
});

app.post("/controllerForm",urlencodeParser,function(req,res){
   sql.query("insert into vendedor values (?,?,?,?,?,?,?,?,?,?)",[req.body.id,req.body.categoria,req.body.nome,req.body.address,req.body.phone,req.body.email,req.body.pass,req.body.bornDate,req.body.rg,req.body.cpf]);
   res.render('controllerForm');
});

//Start server
app.listen(3000,function(req,res){
   console.log('Servidor está rodando!');
});