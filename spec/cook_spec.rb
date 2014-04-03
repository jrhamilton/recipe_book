require 'spec_helper'

describe Cook do

  it { should validate_presence_of :name }

  it { should have_many :ratings }

end
