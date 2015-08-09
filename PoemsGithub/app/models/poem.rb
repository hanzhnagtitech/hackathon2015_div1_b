class Poem < ActiveRecord::Base
  belongs_to :owner
  belongs_to :genre
  has_many :stars
end
