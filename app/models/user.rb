class User  < ActiveRecord::Base
    has_many :muscle_groups
    has_secure_password 

    validates :email, uniqueness: true 
    validates :email, presence: true
    validates :password, presence: true
end 