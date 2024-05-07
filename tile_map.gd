extends TileMap
var i = 0


func _input(event):
   # Mouse in viewport coordinates.
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.is_pressed():
			var global_pos = event.position
			var pos_clicked = local_to_map(to_local(global_pos))
			print("Mouse Click/Unclick at: ", event.position)
			print(to_local(global_pos))
			print(pos_clicked)
			var current_atlas_coords = get_cell_atlas_coords(0,pos_clicked)
			print(current_atlas_coords)
			var tile_source = tile_set.get_source(1)
			print(tile_source.get_tiles_count())
			#set_cell(0,pos_clicked,1,used_cell_array[i % len(used_cell_array)] )
			#i += 1
			
	#elif event is InputEventMouseMotion:
		#print("Mouse Motion at: ", event.position)

   # Print the size of the viewport.
	#print("Viewport Resolution is: ", get_viewport().get_visible_rect().size)


