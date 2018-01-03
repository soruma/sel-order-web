class Product < ApplicationRecord
  enum category: %w(ramen drink)
end
