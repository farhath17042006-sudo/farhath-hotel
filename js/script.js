/*
    Farhath Food Order - Main JavaScript Logic
*/

const foodData = [
    // PIZZA (10)
    { id: 1, name: "Margherita Pizza", desc: "Classic delight with 100% real mozzarella cheese.", price: 299, category: "Pizza", img: "images/pizza/margherita.jpg" },
    { id: 2, name: "Pepperoni Pizza", desc: "Loaded with pepperoni and extra cheese.", price: 499, category: "Pizza", img: "images/pizza/pepperoni.jpg" },
    { id: 3, name: "Farmhouse Pizza", desc: "Delightful combination of onion, capsicum, tomato & grilled mushroom.", price: 349, category: "Pizza", img: "images/pizza/farmhouse.jpg" },
    { id: 8, name: "Veg Supreme Pizza", desc: "Supreme combination of black olives, onions, capsicum, and mushroom.", price: 399, category: "Pizza", img: "images/pizza/veg-supreme.jpg" },
    { id: 9, name: "Mexican Green Wave Pizza", desc: "Loaded with crunchy onions, capsicum, tomato and jalapeño.", price: 349, category: "Pizza", img: "images/pizza/mexican-green-wave.jpg" },
    
    // BURGERS (10)
    { id: 11, name: "Chicken Burger", desc: "Juicy chicken patty with cheese and lettuce.", price: 199, category: "Burgers", img: "images/burgers/chicken.jpg" },
    { id: 12, name: "Veg Burger", desc: "Crispy veg patty with fresh veggies and mayo.", price: 149, category: "Burgers", img: "images/burgers/veg.jpg" },
    { id: 16, name: "Paneer Burger", desc: "Spiced paneer patty with creamy sauce.", price: 179, category: "Burgers", img: "images/burgers/paneer.jpg" },
    
    // STARTERS (10)
    { id: 21, name: "French Fries", desc: "Crispy golden salted fries.", price: 119, category: "Starters", img: "images/starters/french-fries.jpg" },
    { id: 23, name: "Chicken Nuggets", desc: "Crispy bite-sized chicken nuggets.", price: 189, category: "Starters", img: "images/starters/nuggets.jpg" },
    { id: 26, name: "Garlic Bread", desc: "Freshly baked bread with garlic butter.", price: 99, category: "Starters", img: "images/starters/garlic-bread.jpg" },
    { id: 28, name: "Sandwich", desc: "Fresh vegetable and cheese sandwich.", price: 129, category: "Starters", img: "images/starters/sandwich.jpg" },
    { id: 29, name: "Club Sandwich", desc: "Triple layered sandwich with chicken, egg, and veggies.", price: 199, category: "Starters", img: "images/starters/club-sandwich.jpg" },
    
    // MAIN COURSE (10)
    { id: 31, name: "Chicken Biryani", desc: "Aromatic basmati rice cooked with tender chicken and spices.", price: 349, category: "Main Course", img: "images/main-course/chicken-biryani.jpg" },
    { id: 32, name: "Veg Biryani", desc: "Mixed vegetables cooked with fragrant basmati rice.", price: 249, category: "Main Course", img: "images/main-course/veg-biryani.jpg" },
    { id: 33, name: "Chicken Fried Rice", desc: "Wok-tossed rice with chicken chunks and veggies.", price: 229, category: "Main Course", img: "images/main-course/chicken-fried-rice.jpg" },
    { id: 35, name: "Chicken Noodles", desc: "Stir-fried noodles with chicken and soy sauce.", price: 219, category: "Main Course", img: "images/main-course/chicken-noodles.jpg" },
    { id: 37, name: "Chicken Pasta", desc: "Penne pasta in a rich sauce with grilled chicken.", price: 299, category: "Main Course", img: "images/main-course/chicken-pasta.jpg" },
    { id: 38, name: "White Sauce Pasta", desc: "Creamy cheese and garlic sauce pasta.", price: 249, category: "Main Course", img: "images/main-course/white-sauce-pasta.jpg" },
    { id: 39, name: "Red Sauce Pasta", desc: "Tangy tomato and herb sauce pasta.", price: 229, category: "Main Course", img: "images/main-course/red-sauce-pasta.jpg" },
    { id: 40, name: "Paneer Rice", desc: "Flavorful rice tossed with spiced paneer cubes.", price: 239, category: "Main Course", img: "images/main-course/paneer-rice.jpg" },
    
    // DRINKS (5)
    { id: 41, name: "Cold Coffee", desc: "Refreshing blended iced coffee.", price: 129, category: "Drinks", img: "images/drinks/cold-coffee.jpg" },
    { id: 42, name: "Chocolate Milkshake", desc: "Thick chocolate shake topped with cream.", price: 149, category: "Drinks", img: "images/drinks/chocolate-milkshake.jpg" },
    { id: 43, name: "Vanilla Milkshake", desc: "Classic sweet vanilla shake.", price: 129, category: "Drinks", img: "images/drinks/vanilla-milkshake.jpg" },
    { id: 44, name: "Mango Shake", desc: "Fresh and sweet seasonal mango shake.", price: 159, category: "Drinks", img: "images/drinks/mango-shake.jpg" },
    { id: 45, name: "Soft Drinks", desc: "Chilled carbonated beverages (Cola, Sprite, etc).", price: 60, category: "Drinks", img: "images/drinks/soft-drinks.jpg" },
    
    // DESSERTS (5)
    { id: 46, name: "Chocolate Cake", desc: "Rich and moist chocolate layer cake slice.", price: 199, category: "Desserts", img: "images/desserts/chocolate-cake.jpg" },
    { id: 48, name: "Ice Cream", desc: "Two scoops of premium ice cream.", price: 99, category: "Desserts", img: "images/desserts/ice-cream.jpg" },
    { id: 49, name: "Gulab Jamun", desc: "Deep fried milk dough balls soaked in sweet syrup.", price: 89, category: "Desserts", img: "images/desserts/gulab-jamun.jpg" },
    
    // SPECIAL ITEMS
    { id: 51, name: "Momos", desc: "Steamed dumplings filled with savory vegetables.", price: 149, category: "Starters", img: "images/starters/momos.jpg" },
    { id: 52, name: "Mutton Biryani", desc: "Aromatic basmati rice cooked with tender mutton and spices.", price: 399, category: "Main Course", img: "images/main-course/mutton-biryani.jpg" },
    { id: 53, name: "Pani Puri", desc: "Crispy hollow puris filled with spicy tangy water.", price: 99, category: "Starters", img: "images/starters/pani-puri.jpg" },
    { id: 54, name: "Samosa", desc: "Crispy pastry filled with spiced potatoes and peas.", price: 60, category: "Starters", img: "images/starters/samosa.jpg" },
    { id: 55, name: "Spring Rolls", desc: "Crispy rolls filled with savory vegetables.", price: 120, category: "Starters", img: "images/starters/spring-rolls.jpg" },
    { id: 56, name: "Chilli Paneer", desc: "Spicy Indo-Chinese dish made with paneer and bell peppers.", price: 180, category: "Starters", img: "images/starters/chilli-paneer.jpg" }
];

let cart = [];
let billCounter = 1;

// DOM Elements
const foodGrid = document.getElementById('food-grid');
const categoryTabs = document.querySelectorAll('.tab-btn');
const cartToggle = document.getElementById('cart-toggle');
const closeCart = document.getElementById('close-cart');
const cartPanel = document.getElementById('cart-panel');
const cartOverlay = document.getElementById('cart-overlay');
const cartItemsContainer = document.getElementById('cart-items-container');
const cartTotal = document.getElementById('cart-total');
const cartBadge = document.getElementById('cart-badge');
const checkoutBtn = document.getElementById('checkout-btn');
const toastContainer = document.getElementById('toast-container');
const mobileMenuBtn = document.getElementById('mobile-menu-btn');
const mobileNav = document.getElementById('mobile-nav');
const header = document.getElementById('main-header');

// Initialization
document.addEventListener('DOMContentLoaded', () => {
    // Modify tabs in DOM to match our new categories if needed, but since we rely on existing tabs in HTML, we will update the HTML tabs via script or just rely on what is passed.
    // Let's ensure the categories render perfectly.
    renderMenu("All");
    
    // Event Listeners for Categories
    categoryTabs.forEach(tab => {
        tab.addEventListener('click', (e) => {
            categoryTabs.forEach(t => t.classList.remove('active'));
            e.target.classList.add('active');
            const category = e.target.getAttribute('data-category');
            renderMenu(category);
        });
    });

    // Cart Toggle Listeners
    cartToggle.addEventListener('click', toggleCart);
    closeCart.addEventListener('click', toggleCart);
    cartOverlay.addEventListener('click', toggleCart);
    
    // Mobile Menu Toggle
    mobileMenuBtn.addEventListener('click', () => {
        mobileNav.classList.toggle('active');
    });

    // Sticky Header Scroll
    window.addEventListener('scroll', () => {
        if (window.scrollY > 50) {
            header.style.boxShadow = "0 4px 10px rgba(0,0,0,0.1)";
        } else {
            header.style.boxShadow = "0 1px 3px rgba(0,0,0,0.05)";
        }
    });
});

// Render Food Menu
function renderMenu(category) {
    foodGrid.innerHTML = '';
    
    // Map existing HTML tabs ("Other Food") to our new detailed categories if necessary, or just rely on exact matches
    const filteredFood = category === "All" 
        ? foodData 
        : foodData.filter(item => {
            if (category === "Other Food") {
                return item.category === "Starters" || item.category === "Main Course";
            }
            return item.category === category;
        });
        
    if (filteredFood.length === 0) {
        foodGrid.innerHTML = `<div style="grid-column: 1/-1; text-align: center; padding: 40px; color: var(--text-muted);">No items found in this category.</div>`;
        return;
    }

    filteredFood.forEach(item => {
        const cardHTML = `
            <div class="food-card">
                <img src="${item.img}" alt="${item.name}" class="card-img" loading="lazy" onerror="this.src='https://images.unsplash.com/photo-1546069901-ba9599a7e63c?w=400&q=80'">
                <div class="card-content">
                    <h3 class="card-title">${item.name}</h3>
                    <p class="card-desc">${item.desc}</p>
                    <div class="card-footer">
                        <span class="price">₹${item.price}</span>
                        <button class="add-btn" onclick="addToCart(${item.id})" aria-label="Add to cart"><i class="fas fa-plus"></i></button>
                    </div>
                </div>
            </div>
        `;
        foodGrid.insertAdjacentHTML('beforeend', cardHTML);
    });
}

// Add to Cart
window.addToCart = function(id) {
    const item = foodData.find(f => f.id === id);
    if(!item) return;

    const existingItem = cart.find(c => c.id === id);
    if(existingItem) {
        existingItem.qty += 1;
    } else {
        cart.push({ ...item, qty: 1 });
    }
    
    updateCartUI();
    showToast(`${item.name} added to cart!`);
}

// Update Cart Quantity
window.updateQty = function(id, change) {
    const itemIndex = cart.findIndex(c => c.id === id);
    if(itemIndex > -1) {
        cart[itemIndex].qty += change;
        if(cart[itemIndex].qty <= 0) {
            cart.splice(itemIndex, 1);
        }
        updateCartUI();
    }
}

// Remove from Cart directly
window.removeFromCart = function(id) {
    const itemIndex = cart.findIndex(c => c.id === id);
    if(itemIndex > -1) {
        cart.splice(itemIndex, 1);
        updateCartUI();
    }
}

// Update Cart UI
function updateCartUI() {
    cartItemsContainer.innerHTML = '';
    let total = 0;
    let totalItems = 0;

    if(cart.length === 0) {
        cartItemsContainer.innerHTML = `<div class="empty-cart-msg">Your cart is empty.</div>`;
        checkoutBtn.disabled = true;
    } else {
        checkoutBtn.disabled = false;
        
        cart.forEach(item => {
            const itemTotal = item.price * item.qty;
            total += itemTotal;
            totalItems += item.qty;
            
            const cartItemHTML = `
                <div class="cart-item">
                    <img src="${item.img}" alt="${item.name}" class="cart-item-img" onerror="this.src='https://images.unsplash.com/photo-1546069901-ba9599a7e63c?w=400&q=80'">
                    <div class="cart-item-details">
                        <div class="cart-item-title">${item.name}</div>
                        <div class="cart-item-price">₹${item.price} &times; ${item.qty}</div>
                        <button class="remove-btn" onclick="removeFromCart(${item.id})">Remove</button>
                    </div>
                    <div class="cart-item-controls">
                        <button class="qty-btn" onclick="updateQty(${item.id}, -1)"><i class="fas fa-minus"></i></button>
                        <span>${item.qty}</span>
                        <button class="qty-btn" onclick="updateQty(${item.id}, 1)"><i class="fas fa-plus"></i></button>
                    </div>
                </div>
            `;
            cartItemsContainer.insertAdjacentHTML('beforeend', cartItemHTML);
        });
    }

    cartTotal.textContent = `₹${total}`;
    cartBadge.textContent = totalItems;
    
    // Add pop animation to badge
    cartBadge.style.transform = 'scale(1.3)';
    setTimeout(() => {
        cartBadge.style.transform = 'scale(1)';
    }, 200);
}

// Toggle Cart Panel
function toggleCart() {
    cartPanel.classList.toggle('active');
    cartOverlay.classList.toggle('active');
}

// Show Toast Notification
function showToast(message) {
    const toast = document.createElement('div');
    toast.className = 'toast';
    toast.innerHTML = `<i class="fas fa-check-circle"></i> <span>${message}</span>`;
    toastContainer.appendChild(toast);
    
    setTimeout(() => toast.classList.add('show'), 10);
    
    setTimeout(() => {
        toast.classList.remove('show');
        setTimeout(() => toast.remove(), 300);
    }, 3000);
}

// BILL GENERATION SYSTEM
checkoutBtn.addEventListener('click', () => {
    if (cart.length === 0) return;
    
    generateAndDownloadBill();
    
    alert(`Thank you for your order! Your bill has been generated and downloaded.`);
    cart = [];
    updateCartUI();
    toggleCart();
});

function generateAndDownloadBill() {
    // Create Bill Number and Date
    const billNumber = String(billCounter).padStart(3, '0');
    const now = new Date();
    const dateStr = now.toLocaleDateString() + ' ' + now.toLocaleTimeString();
    
    let total = 0;
    
    // Construct Bill Text
    let billText = `================================\n`;
    billText += `       FARHATH FOOD ORDER\n`;
    billText += `================================\n\n`;
    billText += `Customer Order Bill\n\n`;
    billText += `Bill Number: ${billNumber}\n`;
    billText += `Date: ${dateStr}\n\n`;
    billText += `Items:\n\n`;
    
    cart.forEach((item, index) => {
        const itemTotal = item.price * item.qty;
        total += itemTotal;
        billText += `${index + 1}. ${item.name}\n`;
        billText += `Quantity: ${item.qty}\n`;
        billText += `Price: ₹${itemTotal}\n\n`;
    });
    
    billText += `--------------------------------\n\n`;
    billText += `Total Amount:\n`;
    billText += `₹${total}\n\n`;
    billText += `================================\n`;
    billText += `Thank You For Ordering!\n`;
    billText += `Visit Again\n`;
    billText += `================================\n`;
    
    // Download the file
    const blob = new Blob([billText], { type: 'text/plain' });
    const url = URL.createObjectURL(blob);
    const a = document.createElement('a');
    a.href = url;
    a.download = `bill_${billNumber}.txt`;
    document.body.appendChild(a);
    a.click();
    
    // Cleanup
    setTimeout(() => {
        document.body.removeChild(a);
        window.URL.revokeObjectURL(url);
    }, 0);
    
    billCounter++;
}
