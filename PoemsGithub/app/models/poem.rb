class Poem < ActiveRecord::Base
  belongs_to :genre
  has_many :stars
end
