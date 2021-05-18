class MuscleGroup < ActiveRecord::Base
    belongs_to :user, optional: true
    has_many :routines_musclegroups
    has_many :routines, through: :routines_musclegroups

    #validates

    accepts_nested_attributes_for :routines

    def routines_attributes=(routines_attributes)
      if routines_attributes.values[0]['name'].present?
        self.routines << Routine.find_or_create_by(routines_attributes['0'])
      end
    end 
end                                                  