const fs = require('fs');

const file = 'C:/Users/farha/Desktop/emproject/Farhath-Food-Order/js/script.js';
let content = fs.readFileSync(file, 'utf8');

// The list of items to REMOVE (the ones we know are duplicates or irrelevant)
const toRemove = [
    // Pizzas
    "Chicken Pizza", "Paneer Pizza", "BBQ Chicken Pizza", "Cheese Burst Pizza", "Tandoori Chicken Pizza",
    
    // Burgers
    "Cheese Burger", "Double Patty Burger", "Crispy Chicken Burger", "Spicy Chicken Burger", "BBQ Burger", "Classic Burger", "Supreme Burger",
    
    // Starters
    "Peri Peri Fries", "Chicken Wings", "Chicken Popcorn", "Cheese Garlic Bread", "Veg Roll",
    
    // Main Course
    "Veg Fried Rice", "Veg Noodles",
    
    // Desserts
    "Brownie", "Ice Cream Sundae"
];

let lines = content.split('\n');
let newLines = [];

lines.forEach(line => {
    let shouldRemove = false;
    toRemove.forEach(item => {
        // If the line contains the exact name definition for the food
        if (line.includes(`name: "${item}"`)) {
            shouldRemove = true;
        }
    });
    if (!shouldRemove) {
        newLines.push(line);
    }
});

fs.writeFileSync(file, newLines.join('\n'));
console.log("Removed " + (lines.length - newLines.length) + " duplicate/irrelevant items from script.js.");
