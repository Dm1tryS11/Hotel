require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { email: 'email@mail.ru', password: 'password', password_confimation: 'password'} }
    end
  end

  test "should update user" do
    assert_difference('User.count') do
      post users_url, params: { user: { email: 'email@mail.ru', password: 'password1', password_confimation: 'password1'} }
    end

    newuser = User.find_by_email('email@mail.ru')

    patch user_url(newuser), params: { user: { email: 'email@mail1.ru', password: 'password2', password_confimation: 'password2' } }
    
    newuser = User.find_by_email('email@mail1.ru')
    assert_not_nil newuser
  end

  test "should destroy user" do

    assert_difference('User.count') do
      post users_url, params: { user: { email: 'email@mail.ru', password: 'password', password_confimation: 'password'} }
    end

    newuser = User.find_by_email('email@mail.ru')

    assert_difference('User.count', -1) do
      delete user_url(newuser)
    end
  end

end
