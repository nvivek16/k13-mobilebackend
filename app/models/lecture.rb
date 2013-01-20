class Lecture < ActiveRecord::Base
  attr_accessible :description, :name, :place, :timings, :contact
  def to_param
	name	
  end
end
