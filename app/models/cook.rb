class Cook < ActiveRecord::Base

  validates :name, :presence => true

  has_many :ratings

end
