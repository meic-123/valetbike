class RentalsController < ApplicationController
  def rent
    if current_user.active_bike != nil
      flash[:notice] = "Please return the current bike before renting"
      redirect_to action: "show", id: current_user.active_bike
     
    else
    @bike = Bike.find(params[:id])
    
    @rental = Rental.new(bike_id: @bike.id,
      user_id: current_user[:id],
      start_time: Time.zone.now
      )
    
    current_user.active_bike = @bike.identifier
    current_user.save

    @rental.save

    @bike.avail = false
    @bike.current_station_id = 0
    @bike.save
    end
    
  end

  def show
    @bike = Bike.find_by(identifier: current_user.active_bike)
    @rental = Rental.find_by(end_time: nil)
  end

  # def return 
  #   @curr_bike = Bike.find_by(identifier: current_user.active_bike)
  #   @curr_rental = Rental.find_by(end_time: nil)
  #   # @station = Station.find(params[:id])

  #   @curr_bike.avail = true
  #   # @current_bike.current_station_id = @station.identifier
  #   @curr_bike.save 

  #   current_user.active_bike = nil 
  #   current_user.save

  #   @curr_rental.end_time = Time.zone.now
  #   @curr_rental.save 

  # end
  
  def index 
    @past_rentals = Rental.where("end_time < :current_time", { current_time: Time.zone.now })
  end

end
