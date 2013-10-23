scriptName MidasPerkAdScript extends ActiveMagicEffect

Perk property CostPerk auto
Perk property OtherPerk auto

function OnEffectFinish(Actor AkTarget, Actor AkCaster)
	game.GetPlayer().RemovePerk(OtherPerk)
	game.GetPlayer().RemovePerk(OtherPerk)
endFunction

function OnEffectStart(Actor AkTarget, Actor AkCaster)
	game.GetPlayer().AddPerk(CostPerk)
	game.GetPlayer().AddPerk(CostPerk)
endFunction