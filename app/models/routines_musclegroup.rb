class RoutinesMusclegroup < ActiveRecord::Base
    belongs_to :muscle_group
    belongs_to :routine
end 