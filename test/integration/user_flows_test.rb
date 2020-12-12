require 'test_helper'

class UserFlowsTest < ActionDispatch::IntegrationTest
  test "sign in" do
    assert_difference('User.count') do
      post users_url, params: { user: { email: 'email@mail.ru', password: 'password', password_confimation: 'password'} }
    end

    get '/en/session/acc'
    assert_equal '/en/session/acc', path

    get '/en/users'
    assert_equal '/en/users', path
  end

  test "no sign in" do
    post '/en/session/create', params: {name: 'adnim', password: 'password'}
    assert_response :redirect
    follow_redirect!
    assert_equal '/en/session/login', path
  end

  test "check auth" do
    get '/en/users'
    follow_redirect!
    assert_equal '/en/session/login', path
  end
end
