Scriptname MidasSCPTLuggage extends ObjectReference 

objectReference property MyChest auto

EVENT onActivate(objectReference actronaut)
; 	debug.trace(Sending +getLInkedRef()+ an activate from +actronaut)
	MyChest.activate(actronaut)
endEVENT
