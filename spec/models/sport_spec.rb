require 'spec_helper'

describe Sport do
  it {should have_many :teams}
  it {should have_many(:players).through(:teams)}
end
