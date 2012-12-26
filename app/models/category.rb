class Category < ActiveRecord::Base
  attr_accessible :name
  has_many :events
  
  def to_param
	name	
  end
end
