class User < ApplicationRecord
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    has_many :articles
    validates :username, presence: true, 
                        uniqueness: true, 
                        length: {minimum: 5, maximum:20}
    validates :email, presence: true, 
                        uniqueness: true, 
                        length: {maximum: 108},
                        format: {with: VALID_EMAIL_REGEX}
    validates :age, presence: true
    validates :first_name, presence: true
    validates :password, presence: true
end