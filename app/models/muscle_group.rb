class MuscleGroup < ActiveRecord::Base
    belongs_to :user, optional: true
    has_many :routines_musclegroups
    has_many :routines, through: :routines_musclegroups
    
    #validates :name, presence: true 

    accepts_nested_attributes_for :routines 

    def routines_attributes=(routines_attributes)
        binding.pry
        routines_attributes.values.each do |rou|
          
        end 
    end 
end 