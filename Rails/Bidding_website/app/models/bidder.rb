class Bidder < ApplicationRecord
  has_many :items

  before_save {self.email = email.downcase}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  validates :first_name, presence: true
  validates :email, presence: true
  validates :phone, length: {is: 10}
  validates :email, presence: true, uniqueness: true, format: {with: VALID_EMAIL_REGEX}
end
