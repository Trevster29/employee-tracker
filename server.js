const mysql = require("mysql");
const inquirer = require("inquirer");
const cTable = require("console.table");
const Choices = require('inquirer/lib/objects/choices');

const connection = mysql.createConnection({
    host: "localhost",
    port: 3029,
    user: "root",
    password: "Turtles2299",
    database: "TMemployeeTr_db"
});

function start() {
    inquirer.prompt({
        name: 'mainmenu',
        type: 'list',
        message: 'These are your options',
        choices: ['View Roles and Employees', 'Add a Role or Employee']
    }).then(function(answer) {
        console.log(answer)
        if (answer.mainmenu === 'View Roles and Employees') {
            console.log("answer")
            return firstOption();
        } else if (answer.mainmenu === 'Add a Role or Employee') {
            return secondOption();
        };
    });
}

function firstOption() {
    inquirer.prompt({
        name: 'optionList',
        type: 'list',
        message: 'Choose now',
        choices: ['Dpts', 'Roles', 'employed', 'back']
    }).then(function(answer) {
        console.log(answer.optionlist)
        if (answer.choicelist === 'Dpts') {
            console.log('Dpts')
            connection.query('SELECT * FROM department', (err, results) => {
                if (err) throw err;
                console.table(results);
                firstOption();
            })
        } else if (answer.optionlist === 'Roles') {
            connection.query('SELECT * FROM role', (err, results) => {
                if (err) throw err;
                console.table(results);
                firstOption();
            })
        } else if (answer.optionlist === 'employed') {
            console.log("employee")
            connection.query('SELECT * FROM employee', (err, results) => {
                if (err) throw err;
                console.table(results);
                firstOption();
            })
        } else if (answer.optionlist === 'back') {
            return start();
        }
    })
}