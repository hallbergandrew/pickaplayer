class Player < ActiveRecord::Base
  belongs_to :team
  accepts_nested_attributes_for :sport, :team

end
