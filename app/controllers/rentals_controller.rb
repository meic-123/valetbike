class RentalsController < ApplicationController
  def rent
    @bike = Bike.find(params[:id])
    @current_station = @bike.current_station
    
    if @bike.avail
      @rental = Rental.new(bike_id: @bike.id,
      user_id: current_user[:id])

      @rental.save

      @bike.avail = false
      @bike.identifier = current_user.id
      @bike.save
      
      if @rental.save
        flash[:notice] = "success"
      else 
        flash[:alert] = "failure"
      end 
    end
  end

  
end
