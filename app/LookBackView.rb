class LookBackView < UIView

  def initWithDelegate(delegate)
    @delegate = delegate
    self
  end

  def render(view)     
    view.frame = UIScreen.mainScreen.bounds
    view.backgroundColor = UIColor.whiteColor

    view.addSubview(initButton())
  end

  def initButton
    b = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    b.setFrame([[10,320],[300,50]])    
    b.setTitle("Trigger LookBack Settings", forState:UIControlStateNormal)
    b.addTarget(@delegate, action:'triggerSettings', forControlEvents:UIControlEventTouchUpInside)
    b
  end
  
  def createSettingsView
    settings = GFSettingsViewController.settingsViewControllerForInstance(LookBack.lookback)
    settings.navigationItem.leftBarButtonItem = UIBarButtonItem.alloc.initWithBarButtonSystemItem(UIBarButtonSystemItemDone, target:self, action:'dismissSettings')
    settings
  end
end