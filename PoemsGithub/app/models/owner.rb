class Owner < ActiveRecord::Base
  belong_to :users
  belong_to :poems
end
