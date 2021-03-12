class User < ApplicationRecord
    has_secure_password
    validates :mobile_no,:presence => true,
                 :numericality => true,
                 :length => { :minimum => 10, :maximum => 15 }
    validates_uniqueness_of :email
    validates :email, presence: true
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :mobile_no, presence: true
    validates :password, presence: true
end
