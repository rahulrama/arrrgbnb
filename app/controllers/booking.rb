class Arrrgbnb < Sinatra::Base

  get '/booking/new' do
     @property = Property.get(params[:id])
    erb :'bookings/new'
  end

  post '/booking/all' do
    booking = Booking.create( pending: true,
                            approved: false,
                            confirmed: false,
                            rejected: false,
                            cancelled: false,
                            completed: false,
                            date: params[:date]
                            )
    current_user.bookings << booking
    current_user.save
    current_property = Property.get(params[:id])
    current_property.bookings << booking
    current_property.save
    redirect "/users/dashboard"
  end


  patch '/booking/all' do
    Booking.get(params[:booking_id]).update(
                    pending: params[:pending],
                    approved: params[:approved],
                    confirmed: params[:confirmed],
                    rejected: params[:rejected],
                    cancelled: params[:cancelled],
                    completed: params[:completed],
                   )
    redirect "/users/dashboard"
  end


    run! if app_file == $0
end
