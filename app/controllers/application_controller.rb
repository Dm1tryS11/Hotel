# frozen_string_literal: true

# This is ApplicationController

class ApplicationController < ActionController::Base
  before_action :set_locale

  include SessionHelper
  before_action :require_login, except: %i[new create]

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def default_url_options(_options = {})
    { locale: I18n.locale }
  end

  private

  def require_login
    redirect_to session_login_path unless current_user
  end
end
