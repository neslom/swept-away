class Alerts
  def send_alert_message(user)
    message = "Your street is being swept tomorrow. Move yo' car!"

    @client = Twilio::REST::Client.new

    @client.messages.create(
      from: "+1#{ENV['twilio_number']}",
      to: user.phone_number,
      body: message
    )
  end

  def send_welcome_message(user)
    message = "Welcome to Street Sweep! We'll send you another message in advance of your street being swept."

    @client = Twilio::Rest::Client.new

    @client.messages.create(
      from: "+1#{ENV['twilio_number']}",
      to: user.phone_number,
      body: message
    )
  end
end
