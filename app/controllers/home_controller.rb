class HomeController < ApplicationController
  def index
    #@headers = Header.all

    Header.all.each { |header| @header = header }

    @type = @header.type_ru if params[:locale] != true and params[:locale] != 'en' and params[:locale] != 'tm' and params[:locale] != 'ru'
    @type = @header.type_ru if params[:locale] == 'ru'
    @type = @header.type_en if params[:locale] == 'en'
    @type = @header.type_tm if params[:locale] == 'tm'
  end
end
