class MuscleGroup < ActiveRecord::Base
    has_many :days
    has_one :routine
end 