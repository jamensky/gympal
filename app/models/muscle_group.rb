class MuscleGroup < ActiveRecord::Base
    belongs_to :user
    has_many :routines_musclegroups
    has_many :routines, through: :routines_musclegroups
    
    #validates :name, presence: true 

    accepts_nested_attributes_for :routines 

    def routines_attributes=(routines_attributes)
        routines_attributes.values.each do |rou|
           binding.pry 
        end 
    end 
end 