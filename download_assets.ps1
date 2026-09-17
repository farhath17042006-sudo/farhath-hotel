$baseDir = "C:\Users\farha\Desktop\emproject\Farhath-Food-Order\images"

# Create directories if they don't exist
$folders = @("pizza", "burgers", "drinks", "desserts", "other-food", "..\assets")
foreach ($folder in $folders) {
    $path = "$baseDir\$folder"
    if (!(Test-Path $path)) {
        New-Item -ItemType Directory -Path $path | Out-Null
        Write-Host "Created folder: $path"
    }
}

# Define the image URLs
$images = @{
    "pizza\margherita-pizza.jpg" = "https://upload.wikimedia.org/wikipedia/commons/a/a3/Eq_it-na_pizza-margherita_sep2005_sml.jpg"
    "pizza\pepperoni-pizza.jpg" = "https://upload.wikimedia.org/wikipedia/commons/d/d1/Pepperoni_pizza.jpg"
    "pizza\farmhouse-pizza.jpg" = "https://upload.wikimedia.org/wikipedia/commons/d/d3/Supreme_pizza.jpg"
    
    "burgers\veg-burger.jpg" = "https://upload.wikimedia.org/wikipedia/commons/b/b2/Veggie_burger_with_fries.jpg"
    "burgers\chicken-burger.jpg" = "https://upload.wikimedia.org/wikipedia/commons/4/4d/Cheeseburger.jpg"
    
    "drinks\cold-coffee.jpg" = "https://upload.wikimedia.org/wikipedia/commons/a/ac/Affogato_al_Caffe.jpg"
    "drinks\fresh-lime-soda.jpg" = "https://upload.wikimedia.org/wikipedia/commons/d/d3/Cider_%28lemon-lime_drink%29.jpg"
    
    "desserts\chocolate-cake.jpg" = "https://upload.wikimedia.org/wikipedia/commons/6/68/Chocolatebrownie.JPG"
    "desserts\ice-cream.jpg" = "https://upload.wikimedia.org/wikipedia/commons/2/2e/Ice_cream_with_whipped_cream%2C_chocolate_syrup%2C_and_a_wafer_%28cropped%29.jpg"
    
    "other-food\french-fries.jpg" = "https://upload.wikimedia.org/wikipedia/commons/8/83/French_Fries.JPG"
    "other-food\chicken-biryani.jpg" = "https://upload.wikimedia.org/wikipedia/commons/5/5a/Chicken_Biryani_in_Chennai.jpg"
    "other-food\butter-chicken.jpg" = "https://upload.wikimedia.org/wikipedia/commons/3/3c/Chicken_makhani_1.jpg"
    
    "..\assets\hero-bg.jpg" = "https://upload.wikimedia.org/wikipedia/commons/1/1e/Spring_Rolls_%283357696061%29.jpg"
}

$headers = @{
    "User-Agent" = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36"
}

# Download images
foreach ($item in $images.GetEnumerator()) {
    $filename = $item.Name
    $url = $item.Value
    $filepath = "$baseDir\$filename"
    
    Write-Host "Downloading $filename..."
    try {
        Invoke-WebRequest -Uri $url -OutFile $filepath -Headers $headers -UseBasicParsing -TimeoutSec 15
        Write-Host "Successfully downloaded $filename" -ForegroundColor Green
        Start-Sleep -Seconds 1
    } catch {
        Write-Host "Failed to download $filename : $($_.Exception.Message)" -ForegroundColor Red
    }
}
Write-Host "Asset Download Complete!"
