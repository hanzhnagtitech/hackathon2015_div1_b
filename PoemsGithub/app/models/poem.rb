class Poem < ActiveRecord::Base
  belong_to :owners
  belong_to :genres
  has_many :stars
end
