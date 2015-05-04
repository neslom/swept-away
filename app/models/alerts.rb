class Alerts
  def send_text_message(user)
    message = "Your street is being swept tomorrow. Move yo' car!"

    @client = Twilio::REST::Client.new

    @client.messages.create(
      from: "+1#{ENV['twilio_number']}",
      to: user.phone_number,
      body: message
    )
  end
end
