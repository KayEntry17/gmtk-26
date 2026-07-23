@tool
extends Node3D
@export var time:float
@export var starttime:Vector3
@export var timeeff:float
var startc
@export var rapid:bool;
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	time=starttime.x*60*60+starttime.y*60+starttime.z
	startc=time
	timeeff=0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#time+=delta
	#timeeff=time-startc
	time=time-int(time/43200)*43200
	if rapid:
		time+=delta*1000.0
		$hour.rotation_degrees.y=(-time/120-int(-time/120/360)*360)
		$min.rotation_degrees.y=(-time/10-int(-time/10/360)*360)
		$sec.rotation_degrees.y=(-time*6-int(-time*6/360)*360)
	else:
		time=startc+timeeff
		$hour.rotation_degrees.y=lerp($hour.rotation_degrees.y,(-time/120-int(-time/120/360)*360),4*delta)
		$min.rotation_degrees.y=lerp($min.rotation_degrees.y,(-time/10-int(-time/10/360)*360),4*delta)
		$sec.rotation_degrees.y=lerp($sec.rotation_degrees.y,(-time*6-int(-time*6/720)*720),4*delta)

		
