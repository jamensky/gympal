class Routine < ActiveRecord::Base
    has_many :routines_musclegroups
    has_many :muscle_groups, through: :routines_musclegroups

    scope :short_routines, ->{where('time < 10')}

    accepts_nested_attributes_for :muscle_groups
    def muscle_groups_attributes=(muscle_group_attributes)
      if muscle_group_attributes.values[0]['name'].present?
        self.muscle_groups << MuscleGroups.find_or_create_by(muscle_group_attributes['0'])
      end
    end 
end 