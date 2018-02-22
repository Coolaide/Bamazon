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
 database: "homework12DB"
});

      // connect to the mysql server and sql database
connection.connect(function(err) {
  if (err) throw err;
      // run the start function after the connection is made to prompt the user
  start();
});



     // function will show customer available product, cost, and quantity
function start() {
 inquirer
 .prompt({
  name: "ChoseCategory",
  type: "list",
  message: "Which category would you like?",
  choices: ["Electronics", "Apparel", "Books", "Shoes"]
})
 .then(function(answer) {
                // based on their answer, chose the category and post functions for category
    connection.query('SELECT * FROM `StoreStock` WHERE category = ?  ', [answer.ChoseCategory], function (err, results){
    if (err) throw err;
    console.log(results); //PRETTIFY

    inquirer
    .prompt([{
      name: "ChoseProduct",
      message: "Which product would you like? (Input serial number here)",
        },
        {
      name: "ChoseQuantity",
      message: "How many would you like?",
        }
        ])
    .then(function(answer) {
                // based on the answer, use query to show product result
    connection.query('SELECT * FROM `StoreStock` WHERE serialNumber = ?  ', [answer.ChoseProduct], function (err, results){
    if (err) throw err;
                // do a check that (result.quantity >= answer.chosequantity) after select product
                //an if statement
    if(results[0].stockQuantity >= answer.ChoseQuantity){
    console.log("There are " + results[0].stockQuantity + " " + results[0].product + " in stock");
    console.log("This order is for " + answer.ChoseQuantity + " " + results[0].product + " for " + results[0].price + " each");          
        }
         })
       });
       
              //want to multiple (results.price * answer.chosequantity) which is amount user is spending
              //would be inside the if statement
    var totalPrice = results[0].price * answer.ChoseQuantity;

              //verify user is okay with price (another question)
    inquirer
    .prompt({
      name: "ConfirmPurchase",
      type: "confirm",
      message: "The total price is $" +totalPrice + ", would you like to continue with the purchase?"
          //choices: ["Yes", "No"]
        })
    .then(function(data) {
    connection.query('UPDATE StoreStock SET stockQuantity = ? WHERE serialNumber = ?', [newQuantity, results[0].serialNumber], function (err, results) {
    if (err) throw err;
    console.log("Thank you for your purchase.");
            //run a connection query, which updates the quantity to be (results.quantity - answer.chosequantity)
          //inside the inquirer.then method
    var newQuantity = results[0].stockQuantity - answer.ChoseQuantity;
    console.log("There is now " + newQuantity + " " + results[0].product + " in stock");
    })
    });

    inquirer
    .prompt({
      name: "ContinueShopping",
      type: "confirm",
      message: "Whould you like to continue shopping?"
    })
    .then(function(answer) {
    if (answer.ContinueShopping === true){
    start()
    }
    else{
    console.log("Thank you for shopping.");
    connection.end();
    process.exit();
    }

    });  
    })
  })
  }