class Maintenance < ActiveRecord::Base

  belongs_to :robot, inverse_of: :maintenances

end
