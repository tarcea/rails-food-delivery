class Order < ApplicationRecord
  belongs_to :user
  belongs_to :customer
  has_many :meals
end
