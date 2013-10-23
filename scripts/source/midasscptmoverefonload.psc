scriptname MidasSCPTMoveRefOnLoad extends objectReference


objectReference  property TargetRef auto
{Object Ref to Move to Location}
Location Property AvoidLocation Auto Conditional
{This will be the return marker}
EXPLOSION PROPERTY appearExplosion AUTO

EVENT onLoad()
      Self.placeAtMe(appearExplosion)
      if(self.IsInLocation(AvoidLocation) == false)
            TargetRef.MoveTo(Self,0,0,0,True)
      endif
      self.delete()

endEVENT
