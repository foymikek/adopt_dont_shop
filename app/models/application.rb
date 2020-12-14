class Application < ApplicationRecord
  has_many :application_pets
  has_many :pets, through: :application_pets

  validates_presence_of :application_name, :street_address, :city, :state, :zip
end
