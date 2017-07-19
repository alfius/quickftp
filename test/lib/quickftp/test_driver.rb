require 'test_helper'

class TestDriver < Minitest::Test
  def test_authenticates_all_users
    driver = Quickftp::Driver.new('.')
    assert driver.authenticate('someone', 'super secret password')
  end

  def test_authenticates_wrong_password
    driver = Quickftp::Driver.new('.', "someone", "incorrect password")
    assert !driver.authenticate('someone', 'super secret password')
  end

  def test_authenticates_user
    driver = Quickftp::Driver.new('.', "someone", 'super secret password')
    assert driver.authenticate('someone', 'super secret password')
  end

end
