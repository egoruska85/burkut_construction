class HomeController < ApplicationController
  def index
    #@headers = Header.all

      @sliders = Slider.all


  end
end
