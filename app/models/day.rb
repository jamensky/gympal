class Day < ActiveRecord::Base
  has_many :routines 
  has_many :muscle_groups 
  belongs_to :user 
end 