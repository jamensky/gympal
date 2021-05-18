class User  < ActiveRecord::Base
    has_many :muscle_groups
    has_secure_password 
end 