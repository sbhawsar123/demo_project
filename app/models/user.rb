class User < ApplicationRecord
    has_secure_password
    validates :mobile_no, presence: true,
               numericality: true,
                length: {minimum: 10, maximum: 15 }
    validates_uniqueness_of :email
    validates :email, :first_name, :last_name, :password, presence: true
end
