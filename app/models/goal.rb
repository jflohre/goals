class Goal < ActiveRecord::Base
  attr_accessible :name, :steps_attributes
  has_many :steps
  accepts_nested_attributes_for :steps, allow_destroy: true
end
