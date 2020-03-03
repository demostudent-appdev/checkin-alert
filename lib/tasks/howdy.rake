task({ :send_sms => :environment }) do
  # p "Howdy"
  # p "world!"

  # time_to_check = 24.hours.from_now + 15.minutes
  # p Flight.where({ :message_sent => false}).where("departs_at < ?", time_to_check).count

  time_to_check = 24.hours.from_now + 15.minutes
  flight_array = Flight.where({ :message_sent => false}).where("departs_at < ?", time_to_check)

  flight_array.each do |flight|
    # user = User.where({ :id => flight.passenger_id}).first
    p "Flight description: " + flight.description
    p "Departure: " + flight.departs_at.to_s
    p "User phone: "+flight.passenger.phone
    flight.message_sent = true
    flight.save
  end

end