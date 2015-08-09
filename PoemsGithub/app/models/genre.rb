class Genre < ActiveRecord::Base
  has_many :poems
end
