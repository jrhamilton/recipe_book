class Recipe < ActiveRecord::Base

  validates :name, :presence => true
  validates :created_by, :presence => true
  validates :content, :presence => true
  validates_uniqueness_of :name, :scope => :created_by

  has_and_belongs_to_many :tags
  has_many :ratings



end
