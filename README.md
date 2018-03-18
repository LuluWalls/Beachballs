# Beachballs
A spinning cursor for Sketchup on windows to indicate that ruby is busy thinking

tested SU 8, 2015, and 2017 in Windows 7


A simple sample application to demonstrate the functionality

```Ruby
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
  cmd = UI::Command.new("Spin It") {spin()}
  toolbar = toolbar.add_item cmd
  toolbar.show
end

```

![Alt text](readme_images/test.gif?raw=true "Demo")
