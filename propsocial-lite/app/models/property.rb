class Property < ApplicationRecord
  monetize :price_cents

  paginates_per 20
  
  has_many_attached :images

  validates_presence_of :name, :price, :size, :description

  after_validation :log_errors, :if => Proc.new {|m| m.errors}

  ACCEPT_FILE_TYPES = 'image/*'

  def log_errors
    Rails.logger.debug self.errors.full_messages.join("\n")
  end
end
