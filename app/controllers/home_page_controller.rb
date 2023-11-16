class HomePageController < ApplicationController
  def index
  end

  def map
    if params[:station].present?
      @stations = Station.near(params[:station])
    else
      @stations = Station.all.order(identifier: :asc)
    end
  end

  def about
  end

  def howitworks
  end

  def contactus
  end

  def membership
  end
  
end
