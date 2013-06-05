# == Schema Information
#
# Table name: goals
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Goal < ActiveRecord::Base
  belongs_to :user

  attr_accessible :name, :steps_attributes, :user_id
  has_many :steps
  accepts_nested_attributes_for :steps, allow_destroy: true
end
