class Owner < ActiveRecord::Base
  belongs_to :users
  belongs_to :poems
end
