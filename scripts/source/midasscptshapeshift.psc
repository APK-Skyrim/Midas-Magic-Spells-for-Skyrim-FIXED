Scriptname MidasSCPTShapeShift extends ActiveMagicEffect

;--PROPS--
RACE PROPERTY PolymorphRace auto
RACE PROPERTY OrigRace Auto
EXPLOSION PROPERTY appearExplosion AUTO

;--EVENTS--


Event OnEffectStart(Actor Target, Actor Caster)
	if (Target == None)
; 		Debug.Trace("Trying to transform something that's not an actor; bailing out.", 2)
		return
	endif
	OrigRace = Target.GetActorBase().GetRace()
	if (OrigRace != PolymorphRace)
		Target.placeAtMe(appearExplosion)
		Target.SetRace(PolymorphRace)		
	endif
EndEvent

Event OnEffectFinish(Actor Target, Actor Caster)
	; change back
	if (Target == None)
; 		Debug.Trace("Trying to transform something that's not an actor; bailing out.", 2)
		return
	endif
	Target.placeAtMe(appearExplosion)
	Target.SetRace(OrigRace)
endEvent

