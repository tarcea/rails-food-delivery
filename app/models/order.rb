class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :user
  belongs_to :meal
end
