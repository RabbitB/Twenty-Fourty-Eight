extends Polygon2D


onready var bg_color_tween = $BGColorTween as Tween


func set_current_color(new_color: Color) -> void:
	self.color = new_color


func transition_to_color(new_color: Color, over_time: float, ease_type: int, trans_type: int) -> void:
	bg_color_tween.interpolate_property(self, "color",
			self.color, new_color, over_time,
			ease_type, trans_type)
	bg_color_tween.start()

