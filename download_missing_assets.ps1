$baseDir = "C:\Users\farha\Desktop\emproject\Farhath-Food-Order\images"

$missingImages = @{
    "main-course\white-sauce-pasta.jpg" = "https://loremflickr.com/400/300/pasta"
    "pizza\mexican-green-wave.jpg" = "https://loremflickr.com/400/300/pizza,jalapeno"
    "main-course\chicken-biryani.jpg" = "https://loremflickr.com/400/300/biryani,chicken"
    "burgers\veg.jpg" = "https://loremflickr.com/400/300/burger,veg"
    "main-course\chicken-pasta.jpg" = "https://loremflickr.com/400/300/pasta,chicken"
    "pizza\veg-supreme.jpg" = "https://loremflickr.com/400/300/pizza,veg"
    "starters\club-sandwich.jpg" = "https://loremflickr.com/400/300/sandwich,club"
    "main-course\veg-biryani.jpg" = "https://loremflickr.com/400/300/biryani,veg"
    "main-course\red-sauce-pasta.jpg" = "https://loremflickr.com/400/300/pasta,tomato"
    "starters\sandwich.jpg" = "https://loremflickr.com/400/300/sandwich"
    "drinks\chocolate-milkshake.jpg" = "https://loremflickr.com/400/300/milkshake,chocolate"
    "burgers\paneer.jpg" = "https://loremflickr.com/400/300/burger,paneer"
    "drinks\vanilla-milkshake.jpg" = "https://loremflickr.com/400/300/milkshake,vanilla"
}

$headers = @{
    "User-Agent" = "Mozilla/5.0"
}

foreach ($item in $missingImages.GetEnumerator()) {
    $filename = $item.Name
    $url = $item.Value
    $filepath = "$baseDir\$filename"
    
    Write-Host "Downloading fallback for $filename..."
    try {
        Invoke-WebRequest -Uri $url -OutFile $filepath -Headers $headers -UseBasicParsing -TimeoutSec 15
        Start-Sleep -Seconds 1
    } catch {
        Write-Host "Failed to download $filename : $($_.Exception.Message)"
    }
}
Write-Host "Missing Assets Fixed!"
