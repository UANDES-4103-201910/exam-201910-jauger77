class User < ApplicationRecord
  has_many :addresses
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :firstname, format: {with: /\A[a-zA-Z]+\z/}
  validates :lastname, format: {with: /\A[a-zA-Z]+\z/}
  validates :firstname, :lastname, :email, presence: true
end
