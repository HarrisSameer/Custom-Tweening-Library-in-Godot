extends Node


var tweens : Array = []  # all active tweens


func _process(delta):
	var i = 0
	# update all active tweens, remove the finished ones
	while i < len(tweens):
		var tween = tweens[i]
		tween.update(delta)
		if tween.is_done():
			tweens.pop_at(i)
			#if tween._on_end != null:
			#	tween._on_end.call_func(tween)  # call the function referenced by FuncRef
		else:
			i += 1


func tween1():  # (t: CustomTween) => void
	var tween = CustomTween.new()
	tweens.append(tween)
	return tween
	
func tween2(i, f, d):  # (t: CustomTween) => void
	var tween = CustomTween.new()
	tween.startVal = i
	tween.endVal = f
	tween.duration = d
	tweens.append(tween)
	return tween

func tween3(mysprite:Sprite , v1: Vector2, v2: Vector2, dur):  # (t: CustomTween) => void
	var tween = CustomTween.new()
	tween.spr = mysprite
	tween.vec1 = v1
	tween.vec2 = v2
	tween.duration = dur
	tweens.append(tween)
	return tween

func tween4(mysprite:Sprite , string: String, v1: Vector2, v2: Vector2, dur):  # (t: CustomTween) => void
	var tween = CustomTween.new()
	tween.string = string
	tween.spr = mysprite
	tween.vec1 = v1
	tween.vec2 = v2
	tween.duration = dur
	tweens.append(tween)
	return tween

func tween5(mysprite:Sprite , string: String, v1: Vector2, v2: Vector2, dur, easing):  # (t: CustomTween) => void
	var tween = CustomTween.new()
	tween.string = string
	tween.spr = mysprite
	tween.vec1 = v1
	tween.vec2 = v2
	tween.duration = dur
	tween.string = easing
	tweens.append(tween)
	return tween

func tween6(mysprite:Sprite , string, c1: Color, c2: Color, dur):  # (t: CustomTween) => void
	var tween = CustomTween.new()
	tween.spr = mysprite
	tween.fromClr = c1
	tween.toClr = c2
	tween.duration = dur
	tween.string = string
	tweens.append(tween)
	return tween

func tween6_1(mysprite:Sprite , string: String, v1: Vector2, v2: Vector2, dur, easing):  # (t: CustomTween) => void
	var tween = CustomTween.new()
	tween.string = string
	tween.spr = mysprite
	tween.vec1 = v1
	tween.vec2 = v2
	tween.duration = dur
	tween.string = string
	tween.easing = easing
	tweens.append(tween)
	return tween

func tween7(mysprite:Sprite , string: String, v1: Vector2, v2: Vector2, dur, easing, ref):  # (t: CustomTween) => void
	var tween = CustomTween.new()
	tween.spr = mysprite
	tween.vec1 = v1
	tween.vec2 = v2
	tween.string = string
	tween.duration = dur
	tween.easing = easing
	tween.ref = ref
	tweens.append(tween)
	return tween

func tween7_1(mysprite:Sprite , string: String, v1: Vector2, v2: Vector2, dur):  # (t: CustomTween) => void
	var tween = CustomTween.new()
	tween.string = string
	tween.spr = mysprite
	tween.vec1 = v1
	tween.vec2 = v2
	tween.duration = dur
	tweens.append(tween)
	return tween

func tween8(mysprite:Sprite , string, c1: Color, c2: Color, dur, easing):  # (t: CustomTween) => void
	var tween = CustomTween.new()
	tween.spr = mysprite
	tween.fromClr = c1
	tween.toClr = c2
	tween.duration = dur
	tween.string = string
	tween.easing = easing
	tweens.append(tween)
	return tween

func tween8_1(mysprite:Sprite , string: String, v1: Vector2, v2: Vector2, dur, easing):  # (t: CustomTween) => void
	var tween = CustomTween.new()
	tween.spr = mysprite
	tween.vec1 = v1
	tween.vec2 = v2
	tween.duration = dur
	tween.string = string
	tween.easing = easing
	tweens.append(tween)
	return tween

func tween9(mysprite:Sprite , string: String, v1: Vector2, v2: Vector2, dur, easing):  # (t: CustomTween) => void
	var tween = CustomTween.new()
	tween.spr = mysprite
	tween.vec1 = v1
	tween.vec2 = v2
	tween.duration = dur
	tween.string = string
	tween.easing = easing
	tweens.append(tween)
	return tween

func tweenBtn3(mysprite:Sprite , string: String, v1: Vector2, v2: Vector2, dur):  # (t: CustomTween) => void
	var tween = CustomTween.new()
	tween.string = string
	tween.spr = mysprite
	tween.vec1 = v1
	tween.vec2 = v2
	tween.duration = dur
	tweens.append(tween)
	return tween


func tweenBtn4(mysprite:Sprite , string: String, v1: Vector2, v2: Vector2, dur, easing):  # (t: CustomTween) => void
	var tween = CustomTween.new()
	tween.spr = mysprite
	tween.vec1 = v1
	tween.vec2 = v2
	tween.duration = dur
	tween.string = string
	tween.easing = easing
	tweens.append(tween)
	return tween

func tween(mysprite:Sprite , string, start:float, end:float,v1: Vector2, v2: Vector2, c1: Color, c2: Color, dur, easing, ref):  # (t: CustomTween) => void
	var tween = CustomTween.new()
	
	tween.vec1 = v1
	tween.vec2 = v2
	
	tween.spr = mysprite
	
	tween.fromClr = c1
	tween.toClr = c2
	
	tween.duration = dur
	
	tween.string = string
	tween.easing = easing
	
	tween.startVal = start
	tween.endVal = end
	
	tween.ref= ref
	
	tweens.append(tween)
	return tween
