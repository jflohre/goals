class Step < ActiveRecord::Base
  attr_accessible :name, :goal_id
  belongs_to :goal
end
