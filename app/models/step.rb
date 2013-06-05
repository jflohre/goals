# == Schema Information
#
# Table name: steps
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  goal_id    :integer
#

class Step < ActiveRecord::Base
  attr_accessible :name, :goal_id
  belongs_to :goal
end
