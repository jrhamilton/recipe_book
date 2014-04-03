require 'spec_helper'

describe Recipe do
  it { should validate_presence_of :name }
  it { should validate_presence_of :created_by }
  it { should validate_presence_of :content }
  it { should have_and_belong_to_many :tags }

  it    'can have recipes with the same name
        as long as the authors are different' do
      recipe1 = Recipe.create(:name => 'Apple Pie', :content => 'anything', :created_by => 'Maureen')
      recipe2 = Recipe.create(:name => 'Apple Pie', :content => 'anything', :created_by => 'Jason')
      recipe3 = Recipe.create(:name => 'Apple Pie', :content => 'new anything', :created_by => 'Maureen')
      Recipe.all.should eq [recipe1, recipe2]
  end

  it { should validate_uniqueness_of(:name).scoped_to(:created_by)}

  it { should have_many :ratings }

end
