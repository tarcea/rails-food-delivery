class User < ApplicationRecord
  has_many :orders
  has_many :customers, through: :orders
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  def manager
    current_user.role == 'manager'
  end
end
