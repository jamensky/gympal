class User  < ActiveRecord::Base
    has_many :days 
    has_many :muscle_groups, through: :days 
    has_many :routines, through: :days  
end 