class Visitor < ApplicationRecord

# Validations
# Name
  validates :fname, presence: true, length: { maximum: 50 }
  validates :lname, presence: true, length: { maximum: 50 }
# Phone
  validates :phone, presence: true, length: { minimum: 10 }
# Email  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }

end
