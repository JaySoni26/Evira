console.log('Hello World');

//similiar to import 'package:express/express.dart' in flutter
const express = require('express');
//PORT
const PORT = 3000;
//initialising it and saving it in an app var
const app = express();

//Creating an API & We're gonna use Express for it - PORT , IP , CALLBACK
app.listen(PORT,"0.0.0.0",()=>{
    console.log(`Connected to Port ${PORT}`) ;
});