require 'test_helper'

class TestDriver < Minitest::Test
  def test_authenticates_all_users
    driver = Quickftp::Driver.new('.')
    assert driver.authenticate('someone', 'super secret password')
  end
end
