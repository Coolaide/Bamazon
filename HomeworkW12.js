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

// function will show customer available Categories
function start() {
 inquirer
 .prompt({
  name: "ChoseCategory",
  type: "list",
  message: "Which category would you like?",
  choices: ["Electronics", "Apparel", "Books", "Shoes"]
})
 .then(function(answer) {
      // based on answer, run query of specific category using answer and post functions for result
      connection.query('SELECT * FROM `StoreStock` WHERE category = ?  ', [answer.ChoseCategory], function (err, results){
        if (err) throw err;
        console.log(results); //PRETTIFY write for loop that loops results array, for each i it will log results. res.serN, res.Pord, res.price
      })
    }); 

 inquirer
 .prompt({
  name: "ChoseProduct",
  message: "Which product would you like? (Input serial number here)"
})
 .then(function(answer) {
      // based on their answer, chose the category and post functions for category
      connection.query('SELECT * FROM `StoreStock` WHERE serialNumber = ?  ', [answer.ChoseProduct], function (err, results){
        if (err) throw err;
        console.log("You have selected " + answer.ChoseProduct);
      })
    });
}
/* inquirer
 .prompt({
  name: "ChoseQuantity",
  message: "How many " + results[0].Product + " would you like?"
  })

 .then(function(answer) {
      // based on their answer, chose the category and post functions for category
      connection.query('SELECT * FROM `StoreStock` WHERE serialNumber = ?  ', [answer.ChoseProduct], function (err, results){
        if (err) throw err;
 console.log("You would like to purchase " + answer.ChoseQuantity + " " + results[0].product + " for " + results[0].price + " each");

                // do a check that (result.quantity >= answer.chosequantity) after select product
    //an if statement
    if(results[0].stockQuantity >= answer.ChoseQuantity){
              //want to multiple (results.price * answer.chosequantity) which is amount user is spending
    //would be inside the if statement
    var totalPrice = results[0].price * answer.ChoseQuantity;}
  })
   });   
  
//verify user is okay with price (another question)
    // also inside if statement
    inquirer
    .prompt({
      name: "ConfirmPurchase",
      type: "confirm",
      message: "The total price is $" +totalPrice + ", would you like to continue with the purchase?"
      //choices: ["Yes", "No"]
      

    })
    .then(function(data) {
      //write if data.confirm purchase == true everything runs, else end program or restart program
      if(data.ConfirmPurchase === false){
        console.log("Thank you for shopping.");
        connection.end();
        process.exit();
      }
    });

       //run a connection query, which updates the quantity to be (results.quantity - answer.chosequantity)
    //inside the inquirer.then method
    var newQuantity = results[0].stockQuantity - answer.ChoseQuantity;
    console.log("You have purchased " + answer.ChoseQuantity + " " + results[0].product);
    console.log("After your purchase there are currently " + results[0].stockQuantity + " available.");
    connection.query('UPDATE StoreStock SET stockQuantity = ? WHERE serialNumber = ?', [newQuantity, results[0].serialNumber, results[0].product], function (err, results) {
      if (err) throw err;
      console.log("There are " + newQuantity + " now in stock.");
      console.log("Thank you for your purchase.");

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

  }*/