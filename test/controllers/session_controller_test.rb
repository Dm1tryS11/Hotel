require 'test_helper'

class SessionControllerTest < ActionDispatch::IntegrationTest

  test "should get login" do
    get session_login_url
    assert_equal '/session/login', path
  end

  test "should get acc" do
    get session_acc_url
    follow_redirect!
    assert_equal '/ru/session/login', path
  end

  test "should get rooms" do
    get session_rooms_url
    assert_equal '/session/rooms', path
  end

  test "should get index" do
    get session_index_url
    assert_equal '/session/index', path
  end

  test "should get aboutus" do
    get session_aboutus_url
    assert_equal '/session/aboutus', path
  end

  test "should get contact" do
    get session_contact_url
    assert_equal '/session/contact', path
  end
end
