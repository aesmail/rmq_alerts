module RubyMotionQuery
  class RMQ
    # Creates and shows a UIAlertView.
    # The first two parameters are required (title and message).
    # It returns an rmq object.
    # @return [RMQ]
    def alert(title, options = {})
      # TODO UIAlertView is deprecated in iOS 8. Should use UIAlertController for the future.
      alert_view = UIAlertView.alloc.initWithTitle(
        title,
        message: options.fetch(:message, nil),
        delegate: options.fetch(:delegate, nil),
        cancelButtonTitle: options.fetch(:cancel_button, 'OK'),
        otherButtonTitles: nil
      )
      Array(options.fetch(:other_buttons, [])).each { |button| alert_view.addButtonWithTitle(button) }

      alert_view.alertViewStyle = options.fetch(:view_style, UIAlertViewStyleDefault)

      alert_view.show
      rmq(alert_view)
    end
  end
end
