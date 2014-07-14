class InstallationDetail < ActiveRecord::Base
  belongs_to :home_type
  belongs_to :light_type
end
