require 'test_helper'

class ProposalsControllerTest < ActionDispatch::IntegrationTest

  test "should create application" do
    assert_difference('Proposal.count') do
      post proposals_url, params: { proposal: { name: 'Myname', passport: '1234567888', email: 'dv@yandex.ru', arrival: '2020-12-12', departure: '2020-12-14' } }
    end
  end


  test "should destroy application" do

    assert_difference('Proposal.count') do
      post proposals_url, params: { proposal: { name: 'Myname', passport: '1234567888', email: 'dv@yandex.ru', arrival: '2020-12-12', departure: '2020-12-14' } }
    end

    assert_difference('User.count') do
      post users_url, params: { user: { email: 'email@mail.ru', password: 'password', password_confimation: 'password'} }
    end

    application = Proposal.find_by_name('Myname')

    assert_difference('Proposal.count', -1) do
      delete proposal_url(application)
    end
  end


  test "should update application" do
    assert_difference('Proposal.count') do
      post proposals_url, params: { proposal: { name: 'Myname', passport: '1234567888', email: 'dv@yandex.ru', arrival: '2020-12-12', departure: '2020-12-14' } }
    end

    assert_difference('User.count') do
      post users_url, params: { user: { email: 'email@mail.ru', password: 'password', password_confimation: 'password'} }
    end

    application = Proposal.find_by_name('Myname')
      
    patch proposal_url(application ), params: { proposal: { name: 'Myname', passport: '1234567889', email: 'dv@yandex.ru', arrival: '2020-12-12', departure: '2020-12-14' } }
    application  = Proposal.find_by_name('Myname')
    assert_equal application .passport, "1234567889"
  end
  
end
