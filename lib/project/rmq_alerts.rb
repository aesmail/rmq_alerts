module RubyMotionQuery
  class RMQ
    # Creates and shows a UIAlertView.
    # The first two parameters are required (title and message).
    # It returns an rmq object.
    # @return [RMQ]
    def alert(title, message, cancel_button = 'OK', other_buttons = [], delegate = nil)
      # TODO UIAlertView is deprecated in iOS 8. Should use UIAlertController for the future.
      alert_view = UIAlertView.new
      alert_view.title = title
      alert_view.message = message
      alert_view.addButtonWithTitle(cancel_button)
      alert_view.cancelButtonIndex = 0
      other_buttons.each do |b|
        alert_view.addButtonWithTitle(b)
      end
      alert_view.delegate = delegate
      alert_view.show
      rmq(alert_view)
    end
  end
end