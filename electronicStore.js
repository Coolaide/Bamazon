var mysql = require("mysql");
var inquirer = require("inquirer");

// create the connection information for the sql database
var connection = mysql.createConnection({
  host: "localhost",
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "Iss0cool",
  database: "ElectronicStoreDB"
});

// connect to the mysql server and sql database
connection.connect(function(err) {
  if (err) throw err;
  // run the start function after the connection is made to prompt the user
  start();
});
  
// function will show customer available departments to chose from
function start() {
   inquirer
    .prompt({
      name: "ChoseDepartment",
      type: "list",
      message: "Please chose department?",
      choices: ["Electronics", "Apparel", "Books", "Footwear"]
    })

 function choseDepartment() {
  inquirer
    .prompt({
      name: "action",
      type: "list",
      message: "Please chose a department.",
      choices: [
        "Electronics",
        "Apparel",
        "Books",
        "Footwear"
      ]
    })
    .then(function(answer) {
      switch (answer.action) {
        case "Electronics":
          electronicsDept();
          break;

        case "Apparel":
          apparelDept();
          break;

        case "Books":
          booksDept();
          break;

        case "Footwear":
          footwearDept();
          break;
      }
    });
}


function electronicsDept() {
   inquirer
    .prompt({
      name: "Chosecategory",
      type: "list",
      message: "Please chose an electronic category?",
      choices: ["TV & Projectors", "Cameras", "Cell Phones", "Computer & Tablets", "Headphones", "Wireless Speakers", "Monitors", "Printers"]
    })
    .then(function(answer) {
      switch (answer.action) {
        case "TV & Projectors":
          tvCategory();
          break;

        case "Cameras":
          camerasCategory();
          break;

        case "Cell Phones":
          cellCategory();
          break;

        case "Computer & Tablets":
          computerCategory();
          break;

        case "Headphones":
          headphoneCategory();
          break;

        case "Wireless Speakers":
          speakersCategory();
          break;

        case "Monitors":
          monitorCatory();
          break;

        case "Printers":
          printerCategory();
          break;
      }
    });
}


        function tvCategory() {
  inquirer
    .prompt({
      name: "action",
      type: "list",
      message: "Please chose a TV or Projector to purchase",
      choices: [
        "Electronics",
        "Apparel",
        "Books",
        "Footwear"
      ]
    })
        .then(function(answer) {
      // based on the answer, chose the category and post functions for category
      connection.query('SELECT Product, Brand, Price, Quantity FROM TVnProjectors WHERE product = ?  ', [answer.Chosecategory], function (err, results){
        if (err) throw err;
        console.log(results); //PRETTIFY
        connection.end;
















   /* .then(function(answer) {
      // based on their answer, chose the category and post functions for category
      connection.query('SELECT * FROM `ElectronicStoreDB` WHERE department = ?  ', [answer.ChoseDepartment], function (err, results){
        if (err) throw err;
        console.log(results); //PRETTIFY
      
   inquirer
    .prompt([{
      name: "Chosecategory",
      type: "list",
      message: "Which category would you like?",
      choices: ["Electronics", "Apparel", "Books", "Footwear"]
      },
      {
      name: "ChoseQuantity",
      message: "How many would you like?",
      }

    ])
    .then(function(answer) {
      // based on their answer, chose the category and post functions for category
      connection.query('SELECT * FROM `ElectronicStoreDB` WHERE product = ?  ', [answer.ChoseDepartment], function (err, results){
        if (err) throw err;
        console.log(results); //PRETTIFY
        connection.end;*/
// do a check that (result.quantity >= answer.chosequantity) after select product
    //an if statement
//want to multiple (results.price * answer.chosequantity) which is amount user is spending
    //would be inside the if statement
//verify user is okay with price (another question)
    // also inside if statement
//run a connection query, which updates the quantity to be (results.quantity - answer.chosequantity)
    //inside the inquirer.then method
      });
      });
      })
      })
      }







 