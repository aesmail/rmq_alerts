[![image](http://ir_wp.s3.amazonaws.com/wp-content/uploads/sites/19/2014/09/rmq_plugin.png)](http://rubymotionquery.com)

# rmq_alerts

rmq_alerts is an RMQ plugin that makes it very easy to create alert messages in iOS.

rmq_alerts intends to stay very light and provide specific functionality (to display alerts easily). This is a very early version and I will be adding more related functionality hopefully in the near future.

On my to-do list:

* Action sheets

That's it so far. You are more than welcome to submit PRs and suggest features in the issues section.

## Installation

**Requires RMQ 0.9.0 or later, and iOS 7 or later**

To install rmq_alerts, write the following in your terminal:

`gem install rmq_alerts`

Or you can just include it in your RubyMotion app's Gemfile:

`gem 'rmq_alerts'`

## Usage

The plugin adds an 'alert' method to RMQ. It has two required arguments (title and message).

```ruby
rmq.alert('Title goes here', 'Message goes here')
```

```ruby
rmq.alert('Ops!', 'No connectivity!', cancel_button = 'Fine')
```

```ruby
rmq.alert('title', 'message', cancel_button='Yes', other_buttons=['No'], delegate=self)
```

The full method looks like this:

```ruby
rmq.alert(title, message, cancel_button='Yes', other_buttons=['No'], delegate=self, view_style=UIAlertViewStyleDefault)
```

It returns an rmq instance of the alert view.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
