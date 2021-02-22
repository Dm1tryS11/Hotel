# frozen_string_literal: true

class SessionController < ApplicationController

  before_action :require_login, except: %i[login create rooms index contact aboutus loginadmin createadmin logoutadmin admin]
  skip_before_action :require_admin_login, only: %i[login create rooms index contact aboutus loginadmin createadmin logout acc] 


  def login; end

  def create
    user = User.find_by_email(params[:email])
    if user&.authenticate(params[:password])
      sign_out_admin
      sign_in(user)
      redirect_to session_acc_path
    else
      redirect_to session_login_path
    end
  end

  def loginadmin; end

  def createadmin
    admin = Admin.find_by_name(params[:name])
    if admin&.authenticate(params[:password])
      sign_out
      sign_in_admin(admin)
      redirect_to session_admin_path
    else
      redirect_to session_loginadmin_path
    end
  end

  def logout
    sign_out
    redirect_to root_path
  end

  def logoutadmin
    sign_out_admin
    redirect_to root_path
  end

  def acc; end

  def admin; end

  def index; end

  def aboutus; end

  def rooms; end

  def contact; end
end
