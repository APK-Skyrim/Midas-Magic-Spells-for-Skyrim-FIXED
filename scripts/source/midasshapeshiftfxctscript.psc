scriptName MidasShapeshiftfxctScript extends ActiveMagicEffect

Race property PolymorphRace auto

function OnEffectStart(Actor Target, Actor Caster)
	Target.SetRace(none)
endFunction

function OnEffectFinish(Actor Target, Actor Caster)
	if Target.GetActorBase().GetRace() != PolymorphRace
		Target.SetRace(PolymorphRace)
	endIf
endFunction