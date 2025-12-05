<?php
/**
 * Index.php - Restaurant Homepage
 * This file automatically reflects changes from public/restaurant.php
 * All links are updated to use index.php instead of restaurant.php
 * Paths are adjusted to work from the main folder
 */

// Read restaurant.php content from public folder
$content = file_get_contents(__DIR__ . '/public/restaurant.php');

// Adjust paths: from public/ folder, ../css/ becomes css/ when served from main folder
$content = str_replace('../css/', 'css/', $content);
$content = str_replace('../images/', 'images/', $content);
$content = str_replace('../js/', 'js/', $content);
// Fix CSS url() patterns for images (handles both single and double quotes)
$content = preg_replace("/url\((['\"])\.\.\/images\//", "url($1images/", $content);
// Fix data-at2x attributes
$content = str_replace('data-at2x="../images/', 'data-at2x="images/', $content);

// Replace all restaurant.php references with index.php in links
// This ensures navigation, footer, and all other links point to index.php
$content = preg_replace('/href=(["\'])restaurant\.php(["\']|#)/', 'href=$1index.php$2', $content);

// Update links to other restaurant pages to point to public/ folder
$content = preg_replace('/href=(["\'])(restaurant-[^"\']+\.php)/', 'href=$1public/$2', $content);

// Output the modified content
echo $content;
?>

