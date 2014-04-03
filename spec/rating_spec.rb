require 'spec_helper'

describe Rating do

  it { should validate_presence_of :rating }
  it { should belong_to :cook }
  it { should belong_to :recipe }


end
