# frozen_string_literal: true

class SessionController < ApplicationController
  skip_before_action :require_login, only: %i[login create rooms index contact aboutus]

  def login; end

  def create
    user = User.find_by_email(params[:email])
    if user&.authenticate(params[:password])
      sign_in(user)
      redirect_to session_acc_path
    else
      redirect_to session_login_path
    end
  end

  def logout
    sign_out
    redirect_to root_path
  end

  def acc; end

  def index; end

  def aboutus; end

  def rooms; end

  def contact; end
end
