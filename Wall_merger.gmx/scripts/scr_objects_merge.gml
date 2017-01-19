/// scr_objects_merge(listObjectsToMerge, listExceptions, prec, visible, depth);

var ii = noone;
var objectsToMerge = ds_list_create();
var exceptions = ds_list_create();
var preciseMask = false;
var mergeVisible = true;
var mergeDepth = 0;

if(argument_count > 0){ objectsToMerge = argument[0] }
if(argument_count > 1){ exceptions = argument[1] }
if(argument_count > 2){ preciseMask = argument[2] }
if(argument_count > 3){ mergeVisible = argument[3] }
if(argument_count > 4){ mergeDepth = argument[4] }

if(ds_exists(objectsToMerge, ds_type_list) && ds_exists(exceptions, ds_type_list)){
  ii = instance_create(0, 0, obj_wall_merger);
  ii.objectsToMerge = objectsToMerge;
  ii.exceptions = exceptions;
  ii.preciseMask = preciseMask;
  ii.mergeVisible = mergeVisible;
  ii.mergeDepth = mergeDepth;
}

return ii;

