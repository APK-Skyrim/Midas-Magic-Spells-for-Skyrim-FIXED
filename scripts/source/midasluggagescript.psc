Scriptname MidasLuggageScript extends ObjectReference  

ObjectReference Property ChestRef  Auto

EVENT onActivate(objectReference actronaut)
; 	debug.trace(Sending +getLInkedRef()+ an activate from +actronaut)
	ChestRef.activate(actronaut)
endEVENT  
