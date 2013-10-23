scriptName MidasSCPTResurrect extends ActiveMagicEffect
;
;
;=======================================================

objectReference property MyChest auto


event OnEffectStart(Actor akTarget, Actor akCaster)
	akTarget.RemoveAllItems(MyChest,true,true)
	akTarget.resurrect()
endEvent


event OnEffectEnd(Actor akTarget, Actor akCaster)
	akTarget.RemoveAllItems(None,true,true)
	MyChest.RemoveAllItems(akTarget,true,true)
endEvent