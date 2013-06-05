# == Schema Information
#
# Table name: quotes
#
#  id          :integer          not null, primary key
#  description :string(255)
#  name        :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Quote < ActiveRecord::Base
  attr_accessible :description, :name

  def self.display_message
    Quote.pluck(:description).sample
  end
  def self.display_name(quote)
    Quote.where("description" => quote).pluck(:name).sample

  end
end
