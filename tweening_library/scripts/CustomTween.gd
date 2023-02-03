extends Node


class_name CustomTween


var t = 0

var startVal
var endVal

var duration

var spr : Sprite
var vec1: Vector2
var vec2: Vector2

var string

var elapsed = 0.0
var elapsed2 = 0.0
var elapsed3 = 0.0

var fromClr
var toClr

var easing

var ref

var n 

var vec3 

var spline = []

var rotateActive = true

func update(delta: float):
# Task 1 - print numbers from 0 to 1
#	while(t<=1):
#		print(t)
#		t=t+delta
	
#Task 2
#	if(t<=duration):
#		t+=delta
#
#		if(startVal<endVal):
#			print(startVal)
#			startVal+=t
	
#Task 3
#	print(spr)
#	if(t<=duration):
#		t+=delta
#
#		if(vec1.x<=vec2.x):
#			spr.scale.x +=t
#			spr.scale.y +=t
#			vec1.x +=t

#Task 4
#	if string == "scale":
#		if(t<=duration):
#			t+=delta
#
#			if(vec1.x<=vec2.x):
#				spr.scale.x +=t
#				spr.scale.y +=t
#				vec1.x +=t
#
#	elif string == "position":
#			var distance = vec2 - vec1
#			var speed = distance.length()/duration
#
#			elapsed += delta
#			t= elapsed/duration
#			spr.position = vec1 + (distance*t) 
#			if(t>=1):
#				spr.position = vec2

#Task 5
#	match(string):
#		1:
#			var distance = vec2 - vec1
#			var speed = distance.length()/duration
#
#			elapsed += delta
#			t= elapsed/duration
#			t = easeinquad(t)
#			spr.position = vec1 + (distance*t) 
#			if(t>=1):
#				spr.position = vec2
	
#Task 6 
#	if string == "modulate":
#		spr.modulate = fromClr
#		elapsed +=delta
#		t = elapsed/duration
#
#		if t>=1:
#			spr.modulate = toClr
#		else:
#			var currentClr = spr.modulate
#			var r = currentClr.r + (toClr.r - currentClr.r) *t
#			var g = currentClr.g + (toClr.g - currentClr.g) *t
#			var b = currentClr.b + (toClr.b - currentClr.b) *t
#			var a = currentClr.a + (toClr.a - currentClr.a) *t
#			spr.modulate = Color(r,g,b,a)
#
#	elif string == "position":
#		match(easing):
#			1:
#				var distance = vec2 - vec1
#				var speed = distance.length()/duration
#
#				elapsed += delta
#				t= elapsed/duration
#				t = easeinquad(t)
#				spr.position = vec1 + (distance*t) 
#				if(t>=1):
#					spr.position = vec2

# Task 7
#	match(easing):
#			1:
#				var distance = vec2 - vec1
#				var speed = distance.length()/duration
#
#				elapsed += delta
#				t= elapsed/duration
#				t = easeinquad(t)
#				spr.position = vec1 + (distance*t) 
#				if(t>=1):
#					spr.position = vec2
#					var tempTween = Tweens.tween7_1(spr, string, vec2, vec1,1)
#					ref.call_func(tempTween)
#					distance = vec1 - vec2
#					speed = distance.length()/1
#					elapsed2 += delta
#					t= elapsed2/1
#					spr.position = vec2 + (distance*t) 
#					if(t>=1):
#						spr.position = vec1

# Task 8
#	if (string=="modulate"):
#		match(easing):
#				2:
#					spr.modulate = fromClr
#					elapsed +=delta
#					t = elapsed/duration
#					if t>=1:
#						spr.modulate = toClr
#					else:
#						t = smoothstep3(t)
#
#						var currentClr = spr.modulate
#						var r = currentClr.r + (toClr.r - currentClr.r) *t
#						var g = currentClr.g + (toClr.g - currentClr.g) *t
#						var b = currentClr.b + (toClr.b - currentClr.b) *t
#						var a = currentClr.a + (toClr.a - currentClr.a) *t
#						spr.modulate = Color(r,g,b,a)
#
#	elif (string == "position"):
#		match(easing):
#				3:
#					var distance = vec2 - vec1
#					var speed = distance.length()/duration
#
#					elapsed += delta
#					t= elapsed/duration
#					t = ease_out_cubic(t)
#					spr.position = vec1 + (distance*t) 
#					if(t>=1):
#						spr.position = vec2

#Task 9
#	if (string == "position"):
#		match(easing):
#			4:
#				var distance = vec2 - vec1
#				var speed = distance.length()/duration
#
#				elapsed += delta
#				t= elapsed/duration
#				t = ease_in_out_cubic(t)
#				spr.position = vec1 + (distance*t) 
#				if(t>=1):
#					spr.position = vec2
#
#					distance = vec3 - vec2
#					speed = distance.length()/duration
#
#					elapsed2 += delta
#					t= elapsed2/duration
#					t = ease_in_out_cubic(t)
#					spr.position = vec2 + (distance*t) 
#					if(t>=1):
#						spr.position = vec3

#On button 1 press
	if (string=="modulate1"):
		match(easing):
				1:
					spr.modulate = fromClr
					elapsed +=delta
					t = elapsed/duration
					if t>=1:
						spr.modulate = toClr
					else:
						t = smoothstep3(t)

						var currentClr = spr.modulate
						var r = currentClr.r + (toClr.r - currentClr.r) *t
						var g = currentClr.g + (toClr.g - currentClr.g) *t
						var b = currentClr.b + (toClr.b - currentClr.b) *t
						var a = currentClr.a + (toClr.a - currentClr.a) *t
						spr.modulate = Color(r,g,b,a)

 #On Button 2 Press
	elif (string=="modulate2"):
		match(easing):
				1:
					spr.modulate = fromClr
					elapsed +=delta
					t = elapsed/duration
					if t>=1:
						spr.modulate = toClr
					else:
						t = smoothstep3(t)

						var currentClr = spr.modulate
						var r = currentClr.r + (toClr.r - currentClr.r) *t
						var g = currentClr.g + (toClr.g - currentClr.g) *t
						var b = currentClr.b + (toClr.b - currentClr.b) *t
						var a = currentClr.a + (toClr.a - currentClr.a) *t
						spr.modulate = Color(r,g,b,a)
	elif (string=="position2"):
		match(easing):
			1:
				var distance = vec2 - vec1
				var speed = distance.length()/duration
				elapsed += delta
				t= elapsed/duration
				t = ease_out_cubic(t)
				spr.position = vec1 + (distance*t) 
				if(t>=1):
					spr.position = vec2
	elif (string=="rotation2"):
		match(easing):
			1:
				if rotateActive:
					elapsed += delta
					t= elapsed/duration
				
					if(t>1):
						spr.rotation = deg2rad(endVal)
						
					var rotation = _ease_in_out_quad(startVal, endVal, t)
				
					spr.rotation_degrees = rotation
				
					if (t==1):
						rotateActive = false
#On Button 3 Press
	elif(string == "position3"):
		match(easing):
				1:
					var distance = vec2 - vec1
					var speed = distance.length()/duration
					elapsed += delta
					t= elapsed/duration
					t = easeinquad(t)
					spr.position = vec1 + (distance*t) 
					if(t>=1):
						spr.position = vec2
						var tempTween = Tweens.tweenBtn3(spr, string, vec2, vec1,1)
						ref.call_func(tempTween)
						distance = vec1 - vec2
						speed = distance.length()/1
						elapsed2 += delta
						t= elapsed2/1
						spr.position = vec2 + (distance*t) 
						if(t>=1):
							spr.position = vec1
#On Button 4
	elif (string == "position4"):
		match(easing):
			1:
				var distance = vec2 - vec1
				var speed = distance.length()/duration

				elapsed += delta
				t= elapsed/duration
				t = ease_in_out_cubic(t)
				spr.position = vec1 + (distance*t) 
				if(t>=1):
					spr.position = vec2

					distance = vec3 - vec2
					speed = distance.length()/duration

					elapsed2 += delta
					t= elapsed2/duration
					t = ease_in_out_cubic(t)
					spr.position = vec2 + (distance*t) 
					if(t>=1):
						spr.position = vec3

						distance = vec1 - vec3
						speed = distance.length()/duration
						elapsed3 += delta
						t= elapsed3/duration
						t = ease_in_out_cubic(t)
						spr.position = vec3 + (distance*t) 

						if(t>=1):
							spr.position = vec1

func easeinquad(t):
	return t*t

func _ease_in_out_quad(start, end, t):
	var value = (t * t) / ((2 * t) - 1)
	return start + (end - start) * value
	

func smoothstep3(t):
	t = t * t * t * (t * (t * 6 - 15) + 10)
	return t

func ease_out_cubic(t):
	t = t - 1
	return t * t * t + 1

func ease_in_out_cubic(t):
	if t < 0.5:
		t = t * 2
		return t * t * t / 2
	else:
		t = t * 2 - 2
		return (t * t * t + 2) / 2

func add_curve(curve):
	vec3 = curve

func is_done() -> bool:
	# Task 1 - implement this
	return false
