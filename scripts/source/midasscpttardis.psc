scriptname MidasSCPTTardis extends objectReference


objectReference  property TransportPoint auto
{Marker where character will be transported}
objectReference property Tardis auto
{This will be the return marker}
Location Property TardisLocation Auto Conditional


STATE busy
	EVENT onActivate(objectReference actronaut)
; 		debug.trace("Atronach Forge is currently busy.  Try again later")
	endEVENT
endSTATE

auto STATE ready
	EVENT onActivate(objectReference actronaut)
			
		gotoState("busy")

	        if (actronaut == Game.GetPlayer())
	           if (actronaut.IsInLocation(TardisLocation))
			actronaut.MoveTo(Tardis,15,0,0,True)
                   else
                        actronaut.MoveTo(TransportPoint)
                   endif
		endif
		
		gotoState("ready")
		
	endEVENT
endSTATE
