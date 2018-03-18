module Test_Lulu
  def self.spin()
    # start the spinning beach ball
    Lulu::Beachballs.start()
  
    #perform a long calculation
    a = 0
    40000000.times do
      a = a + 1
    end
  
    # Throw an exception
    #x = 10/0

    # always ensure you didn't drop the ball
    ensure
    Lulu::Beachballs.stop()
    
  end # sin  
  
  toolbar = UI::Toolbar.new "Test Beachballs"
  cmd = UI::Command.new("Test") {spin()}
  toolbar = toolbar.add_item cmd
  toolbar.show

end
