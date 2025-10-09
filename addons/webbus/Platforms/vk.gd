extends WBPlatform
class_name WBVKPlatform


var vkBridge:JavaScriptObject


func init_platform(ad_callbacks:JavaScriptObject, reward_callbacks:JavaScriptObject) -> void:
	var _callback := JavaScriptBridge.create_callback(func(args):
		if args[0].result:
			_inited.emit()
		else:
			push_error("Error vk init")
	)
	vkBridge = window.vkBridge
	while not vkBridge:
		vkBridge = window.vkBridge
		await get_tree().create_timer(0.1).timeout
	vkBridge.send("VKWebAppInit").then(_callback)
	await _inited
	inited.emit()
	print('gd init vk')



func _send(event:String, f_callback:Callable=_callback_pass):
	var result_callback := JavaScriptBridge.create_callback(func(args):
		if args[0].result:
			f_callback.call(args[0])
		else:
			push_error("Error vk result")
	)
	var send_callback := JavaScriptBridge.create_callback(func(_args):
		if _args[0]:
			vkBridge.send(event).then(result_callback)
	)
	vkBridge.supportsAsync(event).then(send_callback)


func _callback_pass(data:JavaScriptObject) -> void:
	pass
	
	
func show_ad() -> void:
	pass
