class SweepingAlertJob
  @queue = :sweeping_alert_queue

  def self.perform(current_user_id)
    user = User.find_by(id: current_user_id)
    Alerts.send_alert_message(user)
  end
end
