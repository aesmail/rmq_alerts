describe 'RMQ alerts' do

  before do
    @rmq = RubyMotionQuery::RMQ.new
  end

  it "should return an RMQ instance" do
    @rmq.alert('my title', 'my message').is_a?(RubyMotionQuery::RMQ).should.be.true
  end

  it 'should contain the created alert view' do
    view = @rmq.alert('my title', 'my message').get
    view.is_a?(UIAlertView).should.be.true
    view.title.should.equal('my title')
    view.message.should.equal('my message')
    view.cancelButtonIndex.should.equal(0)
    view.numberOfButtons.should.equal(1)
  end

  it 'should default the cancel button text' do
    view = @rmq.alert('my title', 'my message').get
    view.buttonTitleAtIndex(0).should.equal('OK')
  end

  it 'should allow customizing the cancel button text' do
    view = @rmq.alert('my title', 'my message', 'NO!').get
    view.buttonTitleAtIndex(0).should.equal('NO!')
  end

  it 'should append the other buttons' do
    view = @rmq.alert('my title', 'my message', 'NO!', ['Yes!', 'Maybe!']).get
    view.numberOfButtons.should.equal(3)
    view.buttonTitleAtIndex(0).should.equal('NO!')
    view.buttonTitleAtIndex(1).should.equal('Yes!')
    view.buttonTitleAtIndex(2).should.equal('Maybe!')
  end

  it 'should attach the delegate' do
    delegate = 'a delegate'
    view = @rmq.alert('my title', 'my message', 'NO!', [], delegate).get

    view.delegate.should.equal(delegate)
  end

  it 'should allow customizing the view style' do
    delegate = 'a delegate'
    view = @rmq.alert('title', 'message', 'Yes',[], delegate, UIAlertViewStyleLoginAndPasswordInput).get
    view.alertViewStyle.should.equal(UIAlertViewStyleLoginAndPasswordInput)
  end
end
