class MuscleGroup < ActiveRecord::Base
    belongs_to :user, optional: true
    has_many :routines_musclegroups
    has_many :routines, through: :routines_musclegroups

    #validates

    accepts_nested_attributes_for :routines

    def routines_attributes=(routines_attributes)
        self.routines_attributes = Routine.find_or_create_by(routines_attributes['0'])
    end 
end                                                  