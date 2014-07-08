class Upgrade < ActiveRecord::Base

  belongs_to :robot, inverse_of: :upgrades

  acts_as_historical

end
