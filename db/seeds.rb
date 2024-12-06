# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Product.destroy_all

# Create specific products with detailed attributes
products = [
  {
    name: "Trousers",
    description: "A pair of premium blue jeans designed for comfort and durability. Ideal for casual outings or semi-formal events. Features deep pockets and a tapered fit for a stylish look. Made by Levi's, known for their high-quality denim.",
    category: "Clothing",
    price: 60
  },
  {
    name: "Shirt",
    description: "A crisp white shirt tailored for both casual and formal settings. Includes a chest pocket and buttoned cuffs. Made from 100% organic cotton, ensuring comfort and breathability. Designed by Ralph Lauren, a leader in timeless fashion.",
    category: "Clothing",
    price: 40
  },
  {
    name: "Shoes",
    description: "A pair of sleek black leather shoes, perfect for formal occasions or office wear. Features a cushioned insole for all-day comfort and a slip-resistant sole. Made by Nike, known for their footwear innovation.",
    category: "Footwear",
    price: 80
  },
  {
    name: "Hat",
    description: "A stylish baseball cap made from durable, breathable fabric. Comes with an adjustable strap for a perfect fit. Perfect for sunny days or casual outings. Manufactured by Adidas, combining style with performance.",
    category: "Accessories",
    price: 20
  },
  {
    name: "Chair",
    description: "An ergonomically designed wooden chair with a smooth finish. Provides excellent lumbar support, making it ideal for work or dining. Crafted from sustainably sourced wood by IKEA, ensuring quality and environmental responsibility.",
    category: "Furniture",
    price: 100
  },
  {
    name: "Table",
    description: "A sturdy metal table with a modern industrial design. Features a scratch-resistant surface and adjustable legs for uneven floors. Perfect for dining, work, or decoration. Made by West Elm, known for their stylish home furnishings.",
    category: "Furniture",
    price: 150
  },
  {
    name: "Laptop",
    description: "A high-performance laptop with a 15.6-inch display, 16GB RAM, and a 512GB SSD. Ideal for professionals and gamers alike. Features a sleek, lightweight design for portability. Built by Dell, known for reliable technology.",
    category: "Electronics",
    price: 1000
  },
  {
    name: "Smartphone",
    description: "A cutting-edge smartphone with a 6.5-inch OLED display, 128GB storage, and a triple-camera system for stunning photography. Runs on the latest OS. Designed by Apple, a leader in innovation.",
    category: "Electronics",
    price: 1200
  },
  {
    name: "Watch",
    description: "A classic analog watch with a leather strap and stainless steel case. Water-resistant up to 50 meters. Perfect for everyday wear. Manufactured by Seiko, combining tradition with modern precision.",
    category: "Accessories",
    price: 200
  },
  {
    name: "Backpack",
    description: "A durable, water-resistant backpack with multiple compartments for laptops and gear. Perfect for travel or daily use. Made by Samsonite, a leader in luggage and travel essentials.",
    category: "Accessories",
    price: 75
  },
  # More products follow
  {
    name: "Headphones",
    description: "Noise-cancelling over-ear headphones with crystal-clear sound and up to 30 hours of battery life. Great for music lovers and professionals. Designed by Bose.",
    category: "Electronics",
    price: 250
  },
  {
    name: "Blender",
    description: "A powerful blender with a 1200-watt motor and multiple speed settings. Ideal for smoothies, soups, and sauces. Manufactured by Vitamix.",
    category: "Appliances",
    price: 150
  },
  {
    name: "Camera",
    description: "A DSLR camera with a 24MP sensor and interchangeable lenses. Perfect for professional and hobbyist photographers. Built by Canon.",
    category: "Electronics",
    price: 800
  },
  # Add more unique products here
]

# Create products in the database
products.each do |product|
  Product.create!(product)
end

puts "#{Product.count} products created with detailed descriptions!"