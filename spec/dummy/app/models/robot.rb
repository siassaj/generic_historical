class Robot < ActiveRecord::Base

  has_many :upgrades, inverse_of: :robot
  has_many :maintenances, inverse_of: :robot

  has_generic_history

end
