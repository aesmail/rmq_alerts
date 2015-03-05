class MainController < UIViewController

  def viewDidLoad
    super

    self.title = 'rmq_alerts'

    rmq.stylesheet = MainStylesheet
    rmq(self.view).apply_style :root_view

    rmq.append(UIButton, :alert_button).on(:touch) do |sender, event|
      rmq.alert('Hello', 'This is so easy, right?', cancel_button='Yes', other_buttons=['No', 'Maybe'], delegate=self)
    end
  end

  def supportedInterfaceOrientations
    UIInterfaceOrientationMaskAll
  end
  def willAnimateRotationToInterfaceOrientation(orientation, duration: duration)
    rmq.all.reapply_styles
  end

  def alertView(av, clickedButtonAtIndex: index)
    if index == 0
      rmq.alert('Yes', 'Thank you :)')
    elsif index == 1
      rmq.alert('No!', 'It would be great if you could suggest an easier way on github :)')
    else
      rmq.alert('Maybe!', 'Fine. I will try to make it a "Yes".')
    end
  end
end
