# -*- coding: utf-8 -*-
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# category is ramen
Product.create(name: 'いちごパフェスパ', price: 860, image_url: '/uploads/product/image/ramen/D1000003.JPG', category: 'ramen')
Product.create(name: 'かきラーメン', price: 1300, image_url: '/uploads/product/image/ramen/IMG_4212.JPG', category: 'ramen')
Product.create(name: '薩摩', price: 1300, image_url: '/uploads/product/image/ramen/IMG_4214.JPG', category: 'ramen')
Product.create(name: '大貫中華そば', price: 850, image_url: '/uploads/product/image/ramen/IMG_4884.JPG', category: 'ramen')
Product.create(name: 'ビーフンスープ', price: 300, image_url: '/uploads/product/image/ramen/P1010446.JPG', category: 'ramen')
Product.create(name: 'まぜ麺', price: 850, image_url: '/uploads/product/image/ramen/IMG_7341.JPG', category: 'ramen')
Product.create(name: 'チーズラーメン', price: 1000, image_url: '/uploads/product/image/ramen/IMG_6778.JPG', category: 'ramen')

# category is drink
Product.create(name: '裏天領 吟醸純米 720ml', price: 3000, image_url: '/uploads/product/image/drink/IMG_1950.JPG', category: 'drink')
Product.create(name: '陳年紹興貴酒 8年 640ml', price: 2200, image_url: '/uploads/product/image/drink/IMG_5310.JPG', category: 'drink')
Product.create(name: 'クエルボ 1800 アネホ 700ml', price: 6000, image_url: '/uploads/product/image/drink/', category: 'drink')
Product.create(name: 'Schweppes 160ml', price: 150, image_url: '/uploads/product/image/drink/', category: 'drink')
Product.create(name: '黒松 剣菱 900ml', price: 2500, image_url: '/uploads/product/image/drink/', category: 'drink')
