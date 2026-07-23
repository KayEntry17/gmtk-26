@tool
extends Camera3D
@export var targetcam:Array[Node3D]
@export var curt:int
@export var movespeed:float=4
@export var rotspeed:float=5
var dedof:bool=false
# Called when the node enters the scene tree for the first time.


# Called every frame. 'delta' is the elapsed time since the previous frame.


func _process(delta: float) -> void:
			if Input.is_action_just_pressed("ui_left"):
				curt+=1
			if Input.is_action_just_pressed("ui_right"):
				curt-=1
			
				
	#
			self.global_position.x=lerp(self.global_position.x,targetcam[curt].global_position.x,movespeed*delta)
			self.global_position.y=lerp(self.global_position.y,targetcam[curt].global_position.y,movespeed*delta)
			self.global_position.z=lerp(self.global_position.z,targetcam[curt].global_position.z,movespeed*delta)
			##print("hjoasdjof"+str(self.global_position))
			##print(targetcam[curt].global_position)
			##self.global_rotation=targetcam[curt].global_rotation
			#self.global_rotation.y=lerp_angle(self.global_rotation.y,targetcam[curt].global_rotation.y,rotspeed*delta)
			#self.global_rotation.x=lerp_angle(self.global_rotation.x,targetcam[curt].global_rotation.x,rotspeed*delta)
			#
			#self.global_rotation.z=lerp_angle(self.global_rotation.z,targetcam[curt].global_rotation.z,rotspeed*delta)
			global_transform.basis = global_transform.basis.slerp(
			targetcam[curt].global_transform.basis,
			rotspeed * delta
)
			#self.global_rotation=targetcam[curt].global_rotation
			#self.global_transform=targetcam[curt].global_transform
	 		
	
