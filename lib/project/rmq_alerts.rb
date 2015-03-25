module RubyMotionQuery
  class RMQ
    # Creates and shows a UIAlertView.
    # The first two parameters are required (title and message).
    # It returns an rmq object.
    # @return [RMQ]
    def alert(title, message, cancel_button = 'OK', other_buttons = [], delegate = nil, view_style = UIAlertViewStyleDefault)
      # TODO UIAlertView is deprecated in iOS 8. Should use UIAlertController for the future.
      alert_view = UIAlertView.alloc.initWithTitle(
        title,
        message: message,
        delegate: delegate,
        cancelButtonTitle: cancel_button,
        otherButtonTitles: nil
      )
      Array(other_buttons).each { |button| alert_view.addButtonWithTitle(button) }

      alert_view.alertViewStyle = view_style

      alert_view.show
      rmq(alert_view)
    end
  end
end
