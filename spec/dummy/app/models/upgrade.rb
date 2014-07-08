class Upgrade < ActiveRecord::Base

  belongs_to :robot, inverse_of: :upgrades

end
