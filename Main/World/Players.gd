extends Node2D


@rpc ("call_local", "any_peer", "unreliable")
func send_message(data): 
	rpc("receive_message",data)
	
@rpc
func receive_message(data): pass
