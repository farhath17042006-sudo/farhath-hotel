$baseDir = "C:\Users\farha\Desktop\emproject\Farhath-Food-Order\images"

$replacementImages = @{
    # Fixes
    "pizza\mexican-green-wave.jpg" = "https://images.unsplash.com/photo-1593560708920-61dd98c46a4e?w=400"
    "starters\pani-puri.jpg" = "https://upload.wikimedia.org/wikipedia/commons/2/24/Pani_Puri_in_New_Delhi.jpg"
    "main-course\paneer-rice.jpg" = "https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/Paneer_Tikka_Masala_with_Rice.jpg/800px-Paneer_Tikka_Masala_with_Rice.jpg"
    
    # New Starters
    "starters\spring-rolls.jpg" = "https://upload.wikimedia.org/wikipedia/commons/1/1e/Spring_Rolls_%283357696061%29.jpg"
    "starters\samosa.jpg" = "https://upload.wikimedia.org/wikipedia/commons/c/c8/Samosa_dish.jpg"
    "starters\chilli-paneer.jpg" = "https://upload.wikimedia.org/wikipedia/commons/5/52/Chilli_Paneer.jpg"
}

$headers = @{
    "User-Agent" = "Mozilla/5.0"
}

foreach ($item in $replacementImages.GetEnumerator()) {
    $filename = $item.Name
    $url = $item.Value
    $filepath = "$baseDir\$filename"
    
    Write-Host "Downloading accurate image for $filename..."
    try {
        Invoke-WebRequest -Uri $url -OutFile $filepath -Headers $headers -UseBasicParsing -TimeoutSec 15
        Write-Host "Success: $filename" -ForegroundColor Green
        Start-Sleep -Seconds 2
    } catch {
        Write-Host "Failed to download $filename : $($_.Exception.Message)" -ForegroundColor Red
    }
}
Write-Host "Image correction and new additions downloaded successfully!"
