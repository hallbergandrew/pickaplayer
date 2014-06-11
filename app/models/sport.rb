class Sport < ActiveRecord::Base
  has_many :teams
  has_many :players, :through => :teams
  accepts_nested_attributes_for :teams

end
