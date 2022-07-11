class Property < ApplicationRecord
  monetize :price_cents
  
  has_many_attached :images

  ACCEPT_FILE_TYPES = 'image/*'
end
