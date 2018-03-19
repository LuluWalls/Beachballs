module Test_Lulu
 def self.spin()
   # start the ball spinning
   Lulu::Beachballs.start()
   Sketchup.active_model.start_operation('balls', true)
   
   # perform a long calculation
   1000.times do
     make_block()
   end
 
   # always ensure you didn't drop the ball
   ensure
   Sketchup.active_model.commit_operation
   Lulu::Beachballs.stop()
 end # spin  

 def self.make_block()
   ents = Sketchup.active_model.entities
   grp = ents.add_group

   face = grp.entities.add_face [0,0,0],[1,0,0],[1,1,0],[0,1,0]
   face.pushpull(1)
   
   tr = Geom::Transformation.new [rand(100),rand(100),rand(100)]
   grp.transform!(tr)
 end
 
 toolbar = UI::Toolbar.new "Test Beachballs"
 cmd = UI::Command.new("Test") {spin()}
 toolbar = toolbar.add_item cmd
 toolbar.show
end
