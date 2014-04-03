class Recipe < ActiveRecord::Base

  validates :name, :presence => true
  validates :created_by, :presence => true
  validates :content, :presence => true

  has_and_belongs_to_many :tags

end
