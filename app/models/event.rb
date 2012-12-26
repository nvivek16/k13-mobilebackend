class Event < ActiveRecord::Base
  attr_accessible :category_id, :description, :name, :place
  belongs_to :category
  
  def to_param
	name	
 end
end
