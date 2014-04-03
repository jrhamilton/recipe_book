class Rating < ActiveRecord::Base

  validates :rating, :presence => true

  belongs_to :cook
  belongs_to :recipe

end
