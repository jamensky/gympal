class Routine < ActiveRecord::Base
    has_many :days 
    belongs_to :muscle_group
end 