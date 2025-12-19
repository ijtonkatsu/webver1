# Sync script: Copies public/restaurant.html to root index.html and updates paths/links
# Run this script whenever you make changes to restaurant.html

Write-Host "Syncing public/restaurant.html to index.html..." -ForegroundColor Cyan

# Copy restaurant.html to index.html in root
Copy-Item -Path "public\restaurant.html" -Destination "index.html" -Force

Write-Host "File copied successfully." -ForegroundColor Green

# Read the content
$content = Get-Content -Path "index.html" -Raw -Encoding UTF8

# Update paths for root location
# ../images/ -> images/
$content = $content -replace '\.\./images/', 'images/'

# ../css/ -> css/
$content = $content -replace '\.\./css/', 'css/'

# ../js/ -> js/
$content = $content -replace '\.\./js/', 'js/'

# img/ -> public/img/ (for images in public/img folder)
$content = $content -replace 'src="img/', 'src="public/img/'
$content = $content -replace "url\('img/", "url('public/img/"

# restaurant-*.html -> public/restaurant-*.html (for links to other pages)
$content = $content -replace 'href="restaurant-', 'href="public/restaurant-'

# Update navbar brand link and Home link to point to index.html
$content = $content -replace 'href="restaurant\.html"', 'href="index.html"'

# Update footer logo link
$content = $content -replace 'href="restaurant\.html"', 'href="index.html"'

# Save the updated content
Set-Content -Path "index.html" -Value $content -Encoding UTF8 -NoNewline

Write-Host "Paths and links updated successfully." -ForegroundColor Green
Write-Host "Sync complete! index.html is now identical to restaurant.html with updated paths and links." -ForegroundColor Green
