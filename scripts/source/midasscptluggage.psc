Scriptname MidasSCPTLuggage extends ObjectReference  

ObjectReference Property MyChest  Auto

EVENT onActivate(objectReference actronaut)
; 	debug.trace(Sending +getLInkedRef()+ an activate from +actronaut)
	MyChest.activate(actronaut)
endEVENT  
