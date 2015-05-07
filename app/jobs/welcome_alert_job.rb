class WelcomeAlertJob
  @queue = :welcome_alert_queue

  def self.perform(current_user_id)
    user = User.find_by(id: current_user_id)

    Alerts.send_welcome_message(user)
  end
end
