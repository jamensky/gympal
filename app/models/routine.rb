class Routine < ActiveRecord::Base
    has_many :routines_musclegroups
    has_many :muscle_groups, through: :routines_musclegroups
end 