class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :comments
  validates :username, presence: true, uniqueness: true, length: {minimum: 5, maximum: 15}
  validates :email, presence: true
end
