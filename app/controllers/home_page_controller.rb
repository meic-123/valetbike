class HomePageController < ApplicationController
  def index
  end

  def map
      @stations = Station.all.order(identifier: :asc)
  end

  
end
