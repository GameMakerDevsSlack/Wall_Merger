/// scr_game_init();

// Debug
instance_create(0, 0, obj_overlay);

// List of objects to merge
var listObjectsToMerge = ds_list_create();
ds_list_add(listObjectsToMerge, obj_wall_parent);

// Exceptions objects (with a parent in the listObjectToMerge but won't be merged)
var listExceptions = ds_list_create();
ds_list_add(listExceptions, obj_wall_slope_up);
ds_list_add(listExceptions, obj_wall_slope_down);

// Merge it
mergedWalls = scr_objects_merge(listObjectsToMerge, listExceptions, false, true, -100);
