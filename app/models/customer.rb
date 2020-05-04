class Customer < ApplicationRecord
  has_many :orders, dependent: :destroy

  # def to_s
  #   @customers = Customer.all
  #   @customers.each do |customer|
  #     return "#{customer.name} | #{customer.address} | #{customer.phone}"
  #   end
  # end
end
