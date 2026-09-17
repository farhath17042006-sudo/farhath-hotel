$baseDir = "C:\Users\farha\Desktop\emproject\Farhath-Food-Order\images"

$folders = @("pizza", "burgers", "starters", "main-course", "drinks", "desserts")
foreach ($folder in $folders) {
    $path = "$baseDir\$folder"
    if (!(Test-Path $path)) {
        New-Item -ItemType Directory -Path $path | Out-Null
    }
}

$images = @{
    # Pizza (10)
    "pizza\margherita.jpg" = "https://upload.wikimedia.org/wikipedia/commons/a/a3/Eq_it-na_pizza-margherita_sep2005_sml.jpg"
    "pizza\pepperoni.jpg" = "https://upload.wikimedia.org/wikipedia/commons/d/d1/Pepperoni_pizza.jpg"
    "pizza\farmhouse.jpg" = "https://upload.wikimedia.org/wikipedia/commons/d/d3/Supreme_pizza.jpg"
    "pizza\chicken.jpg" = "https://upload.wikimedia.org/wikipedia/commons/c/c0/Pizza_with_tomatoes.jpg"
    "pizza\paneer.jpg" = "https://upload.wikimedia.org/wikipedia/commons/1/1e/Spring_Rolls_%283357696061%29.jpg" # Substitute paneer pizza
    "pizza\bbq-chicken.jpg" = "https://upload.wikimedia.org/wikipedia/commons/c/c0/Pizza_with_tomatoes.jpg"
    "pizza\cheese-burst.jpg" = "https://upload.wikimedia.org/wikipedia/commons/a/a3/Eq_it-na_pizza-margherita_sep2005_sml.jpg"
    "pizza\veg-supreme.jpg" = "https://upload.wikimedia.org/wikipedia/commons/9/9f/Vegetarian_pizza.jpg"
    "pizza\mexican-green-wave.jpg" = "https://upload.wikimedia.org/wikipedia/commons/9/9f/Vegetarian_pizza.jpg"
    "pizza\tandoori-chicken.jpg" = "https://upload.wikimedia.org/wikipedia/commons/c/c0/Pizza_with_tomatoes.jpg"
    
    # Burgers (10)
    "burgers\chicken.jpg" = "https://upload.wikimedia.org/wikipedia/commons/4/4d/Cheeseburger.jpg"
    "burgers\veg.jpg" = "https://upload.wikimedia.org/wikipedia/commons/b/b2/Veggie_burger_with_fries.jpg"
    "burgers\cheese.jpg" = "https://upload.wikimedia.org/wikipedia/commons/4/4d/Cheeseburger.jpg"
    "burgers\double-patty.jpg" = "https://upload.wikimedia.org/wikipedia/commons/4/4d/Cheeseburger.jpg"
    "burgers\crispy-chicken.jpg" = "https://upload.wikimedia.org/wikipedia/commons/4/4d/Cheeseburger.jpg"
    "burgers\paneer.jpg" = "https://upload.wikimedia.org/wikipedia/commons/b/b2/Veggie_burger_with_fries.jpg"
    "burgers\spicy-chicken.jpg" = "https://upload.wikimedia.org/wikipedia/commons/4/4d/Cheeseburger.jpg"
    "burgers\bbq.jpg" = "https://upload.wikimedia.org/wikipedia/commons/4/4d/Cheeseburger.jpg"
    "burgers\classic.jpg" = "https://upload.wikimedia.org/wikipedia/commons/4/4d/Cheeseburger.jpg"
    "burgers\supreme.jpg" = "https://upload.wikimedia.org/wikipedia/commons/4/4d/Cheeseburger.jpg"
    
    # Starters (10)
    "starters\french-fries.jpg" = "https://upload.wikimedia.org/wikipedia/commons/8/83/French_Fries.JPG"
    "starters\peri-peri-fries.jpg" = "https://upload.wikimedia.org/wikipedia/commons/8/83/French_Fries.JPG"
    "starters\nuggets.jpg" = "https://upload.wikimedia.org/wikipedia/commons/5/51/Buffalo_wings-01.jpg"
    "starters\wings.jpg" = "https://upload.wikimedia.org/wikipedia/commons/5/51/Buffalo_wings-01.jpg"
    "starters\popcorn.jpg" = "https://upload.wikimedia.org/wikipedia/commons/5/51/Buffalo_wings-01.jpg"
    "starters\garlic-bread.jpg" = "https://upload.wikimedia.org/wikipedia/commons/4/4e/Annapurna_Naan.jpg"
    "starters\cheese-garlic-bread.jpg" = "https://upload.wikimedia.org/wikipedia/commons/4/4e/Annapurna_Naan.jpg"
    "starters\sandwich.jpg" = "https://upload.wikimedia.org/wikipedia/commons/7/77/Sandwich.jpg"
    "starters\club-sandwich.jpg" = "https://upload.wikimedia.org/wikipedia/commons/7/77/Sandwich.jpg"
    "starters\veg-roll.jpg" = "https://upload.wikimedia.org/wikipedia/commons/1/1e/Spring_Rolls_%283357696061%29.jpg"
    
    # Main Course (10)
    "main-course\chicken-biryani.jpg" = "https://upload.wikimedia.org/wikipedia/commons/5/5a/Chicken_Biryani_in_Chennai.jpg"
    "main-course\veg-biryani.jpg" = "https://upload.wikimedia.org/wikipedia/commons/5/5a/Chicken_Biryani_in_Chennai.jpg"
    "main-course\chicken-fried-rice.jpg" = "https://upload.wikimedia.org/wikipedia/commons/c/c3/Koh_Mak%2C_Thailand%2C_Fried_rice_with_seafood%2C_Thai_fried_rice.jpg"
    "main-course\veg-fried-rice.jpg" = "https://upload.wikimedia.org/wikipedia/commons/c/c3/Koh_Mak%2C_Thailand%2C_Fried_rice_with_seafood%2C_Thai_fried_rice.jpg"
    "main-course\chicken-noodles.jpg" = "https://upload.wikimedia.org/wikipedia/commons/a/a6/Homemade_Chow_mein_with_shrimps_and_meat_with_a_choy_and_Choung.jpg"
    "main-course\veg-noodles.jpg" = "https://upload.wikimedia.org/wikipedia/commons/a/a6/Homemade_Chow_mein_with_shrimps_and_meat_with_a_choy_and_Choung.jpg"
    "main-course\chicken-pasta.jpg" = "https://upload.wikimedia.org/wikipedia/commons/1/15/Recipe_Penne_Pasta.jpg"
    "main-course\white-sauce-pasta.jpg" = "https://upload.wikimedia.org/wikipedia/commons/1/15/Recipe_Penne_Pasta.jpg"
    "main-course\red-sauce-pasta.jpg" = "https://upload.wikimedia.org/wikipedia/commons/1/15/Recipe_Penne_Pasta.jpg"
    "main-course\paneer-rice.jpg" = "https://upload.wikimedia.org/wikipedia/commons/5/5c/Paneer_Makhani_Veggie.jpeg"
    
    # Drinks (5)
    "drinks\cold-coffee.jpg" = "https://upload.wikimedia.org/wikipedia/commons/a/ac/Affogato_al_Caffe.jpg"
    "drinks\chocolate-milkshake.jpg" = "https://upload.wikimedia.org/wikipedia/commons/b/b3/Chocolate_milkshake.jpg"
    "drinks\vanilla-milkshake.jpg" = "https://upload.wikimedia.org/wikipedia/commons/b/b3/Chocolate_milkshake.jpg"
    "drinks\mango-shake.jpg" = "https://upload.wikimedia.org/wikipedia/commons/f/f1/Salt_lassi.jpg"
    "drinks\soft-drinks.jpg" = "https://upload.wikimedia.org/wikipedia/commons/d/d3/Cider_%28lemon-lime_drink%29.jpg"
    
    # Desserts (5)
    "desserts\chocolate-cake.jpg" = "https://upload.wikimedia.org/wikipedia/commons/6/68/Chocolatebrownie.JPG"
    "desserts\brownie.jpg" = "https://upload.wikimedia.org/wikipedia/commons/6/68/Chocolatebrownie.JPG"
    "desserts\ice-cream.jpg" = "https://upload.wikimedia.org/wikipedia/commons/2/2e/Ice_cream_with_whipped_cream%2C_chocolate_syrup%2C_and_a_wafer_%28cropped%29.jpg"
    "desserts\gulab-jamun.jpg" = "https://upload.wikimedia.org/wikipedia/commons/c/c1/Gulab-jamun-wallpaper-1.jpg"
    "desserts\sundae.jpg" = "https://upload.wikimedia.org/wikipedia/commons/2/2e/Ice_cream_with_whipped_cream%2C_chocolate_syrup%2C_and_a_wafer_%28cropped%29.jpg"
}

$headers = @{
    "User-Agent" = "FarhathFoodApp/1.0 (farhath17042006@gmail.com) PowerShell/7.0"
}

foreach ($item in $images.GetEnumerator()) {
    $filename = $item.Name
    $url = $item.Value
    $filepath = "$baseDir\$filename"
    
    if (!(Test-Path $filepath)) {
        Write-Host "Downloading $filename..."
        try {
            Invoke-WebRequest -Uri $url -OutFile $filepath -Headers $headers -UseBasicParsing -TimeoutSec 10
            Start-Sleep -Seconds 2 # 2 second delay to prevent 429
        } catch {
            Write-Host "Failed to download $filename : $($_.Exception.Message)"
        }
    } else {
        Write-Host "$filename already exists. Skipping."
    }
}
Write-Host "50 Assets Downloaded!"
