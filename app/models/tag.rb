class Tag < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true

  has_and_belongs_to_many :recipes

  def get_recipes

  end


end
