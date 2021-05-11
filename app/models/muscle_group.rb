class MuscleGroup < ActiveRecord::Base
    belongs_to :user
    has_many :routines_musclegroups
    has_many :routines, through: :routines_musclegroups
end 