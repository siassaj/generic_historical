class Maintenance < ActiveRecord::Base

  belongs_to :robot, inverse_of: :maintenances

  acts_as_historical

end
