@tool
extends Node3D
@export var time:float
@export var starttime:Vector3
@export var timeeff:float
var startc
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	time=starttime.x*60*60+starttime.y*60+starttime.z
	startc=time


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#time+=delta
	$hour.rotation_degrees.y=-time/120
	$min.rotation_degrees.y=-time/10
	$sec.rotation_degrees.y=-time*6
	timeeff=time-startc
