class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_locale, :navbar_links

  private

  def set_locale
    I18n.locale = extract_locale || I18n.default_locale
  end

  def extract_locale
    parsed_locale = params[:locale]
    I18n.available_locales.map(&:to_s).include?(parsed_locale) ? parsed_locale : nil
  end

  def default_url_options
    { locale: I18n.locale }
  end

  def navbar_links
    Header.all.each { |header| @header = header }

    @type = @header.type_ru if params[:locale] != true and params[:locale] != 'en' and params[:locale] != 'tm' and params[:locale] != 'ru'
    @type = @header.type_ru if params[:locale] == 'ru'
    @type = @header.type_en if params[:locale] == 'en'
    @type = @header.type_tm if params[:locale] == 'tm'
  end

  protected

  def configure_permitted_parameters
    added_attrs = [:username, :email, :password, :password_confirmation, :remember_me]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :sign_in, keys: [:login, :password]
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end
end
