$baseDir = "C:\Users\farha\Desktop\emproject\Farhath-Food-Order\images"

$replacementImages = @{
    "drinks\soft-drinks.jpg" = "https://images.unsplash.com/photo-1622483767028-3f66f32aef97?w=400"
    "desserts\chocolate-cake.jpg" = "https://images.unsplash.com/photo-1578985545062-69928b1d9587?w=400"
    "drinks\chocolate-milkshake.jpg" = "https://images.unsplash.com/photo-1572490122747-3968b75cc699?w=400"
    "drinks\cold-coffee.jpg" = "https://images.unsplash.com/photo-1461023058943-07fcbe16d735?w=400"
    "main-course\paneer-rice.jpg" = "https://images.unsplash.com/photo-1596797038530-2c107229654b?w=400"
    "main-course\red-sauce-pasta.jpg" = "https://images.unsplash.com/photo-1551183053-bf91a1d81141?w=400"
    "main-course\white-sauce-pasta.jpg" = "https://images.unsplash.com/photo-1621996311210-911b33367980?w=400"
    "main-course\chicken-pasta.jpg" = "https://images.unsplash.com/photo-1608897013039-887f21d8c804?w=400"
    "main-course\chicken-fried-rice.jpg" = "https://images.unsplash.com/photo-1603133872878-684f208fb84b?w=400"
    "main-course\chicken-biryani.jpg" = "https://images.unsplash.com/photo-1563379091339-03b2184f4f43?w=400"
    "starters\sandwich.jpg" = "https://images.unsplash.com/photo-1528735602780-2552fd46c7af?w=400"
    
    # New Items
    "starters\momos.jpg" = "https://images.unsplash.com/photo-1625220194771-7ebdea0b70b9?w=400"
    "main-course\mutton-biryani.jpg" = "https://images.unsplash.com/photo-1631515243349-e0cb75fb8d3a?w=400"
    "starters\pani-puri.jpg" = "https://images.unsplash.com/photo-1601050690597-df0568f70950?w=400"
}

foreach ($item in $replacementImages.GetEnumerator()) {
    $filename = $item.Name
    $url = $item.Value
    $filepath = "$baseDir\$filename"
    
    Write-Host "Downloading excellent Unsplash image for $filename..."
    try {
        Invoke-WebRequest -Uri $url -OutFile $filepath -UseBasicParsing -TimeoutSec 15
        Write-Host "Success: $filename" -ForegroundColor Green
    } catch {
        Write-Host "Failed to download $filename : $($_.Exception.Message)" -ForegroundColor Red
    }
}
Write-Host "All specific replacement images downloaded successfully!"
