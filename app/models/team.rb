class Team < ActiveRecord::Base
  belongs_to :sport
  has_many :players
  accepts_nested_attributes_for :sport, :players

end
