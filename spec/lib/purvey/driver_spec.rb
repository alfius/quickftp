require 'spec_helper'

describe Purvey::Driver do
  let :driver do
    Purvey::Driver.new('.')
  end

  it 'should authenticate all users' do
    driver.authenticate('someone', 'super secret password').should == true
  end
end
