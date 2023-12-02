module ActiveTripHelper
    def change_bike_avail
        @user = current_user
        @trip = Trip.find_by(user_id: @user.id)
        @bike = Bike.find(@user.active_bike)
        #@station = @trip.ending_station_id
        @bike.avail = true
        @user.active_bike = nil
        @user.save
        root_path
      end
end
