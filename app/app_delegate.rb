class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.makeKeyAndVisible

    openController()
    loadLookBack()

    true
  end

  def loadLookBack
    #LookBackHelper.new
    return
  end

  def openController
    con = LookBackViewController.new
    navigationController = UINavigationController.alloc.initWithRootViewController(con)    
    navigationController.navigationBar.barTintColor = UIColor.colorWithRed(0, green:0.6, blue:0.933, alpha:1.0)
    @window.rootViewController = navigationController
  end

end
