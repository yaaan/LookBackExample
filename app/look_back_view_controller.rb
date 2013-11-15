class LookBackViewController < UIViewController

  def viewDidLoad
    super    
    @view = LookBackView.alloc.initWithDelegate(self)
    @view.render(self.view)        

    setUp()
  end

  def setUp
    self.title = "LookBackExample"    
  end

  def triggerSettings
    con = @view.createSettingsView
    self.pushViewController(con, animated:true)
  end
end