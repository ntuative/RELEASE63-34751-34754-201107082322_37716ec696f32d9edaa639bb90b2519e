package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_196;
         param1["bound_to_parent_rect"] = const_101;
         param1["child_window"] = const_1206;
         param1["embedded_controller"] = const_1208;
         param1["resize_to_accommodate_children"] = WINDOW_PARAM_RESIZE_TO_ACCOMMODATE_CHILDREN;
         param1["input_event_processor"] = const_31;
         param1["internal_event_handling"] = const_1012;
         param1["mouse_dragging_target"] = const_293;
         param1["mouse_dragging_trigger"] = const_448;
         param1["mouse_scaling_target"] = const_320;
         param1["mouse_scaling_trigger"] = const_670;
         param1["horizontal_mouse_scaling_trigger"] = const_305;
         param1["vertical_mouse_scaling_trigger"] = const_298;
         param1["observe_parent_input_events"] = const_1382;
         param1["optimize_region_to_layout_size"] = const_636;
         param1["parent_window"] = const_1197;
         param1["relative_horizontal_scale_center"] = const_234;
         param1["relative_horizontal_scale_fixed"] = const_141;
         param1["relative_horizontal_scale_move"] = const_404;
         param1["relative_horizontal_scale_strech"] = const_456;
         param1["relative_scale_center"] = const_1368;
         param1["relative_scale_fixed"] = const_1000;
         param1["relative_scale_move"] = const_1255;
         param1["relative_scale_strech"] = const_1269;
         param1["relative_vertical_scale_center"] = const_204;
         param1["relative_vertical_scale_fixed"] = const_167;
         param1["relative_vertical_scale_move"] = const_258;
         param1["relative_vertical_scale_strech"] = const_361;
         param1["on_resize_align_left"] = const_823;
         param1["on_resize_align_right"] = const_524;
         param1["on_resize_align_center"] = const_585;
         param1["on_resize_align_top"] = const_756;
         param1["on_resize_align_bottom"] = const_645;
         param1["on_resize_align_middle"] = const_658;
         param1["on_accommodate_align_left"] = const_1404;
         param1["on_accommodate_align_right"] = const_591;
         param1["on_accommodate_align_center"] = const_986;
         param1["on_accommodate_align_top"] = const_1188;
         param1["on_accommodate_align_bottom"] = const_666;
         param1["on_accommodate_align_middle"] = const_884;
         param1["route_input_events_to_parent"] = const_628;
         param1["use_parent_graphic_context"] = const_33;
         param1["draggable_with_mouse"] = const_1262;
         param1["scalable_with_mouse"] = const_1201;
         param1["reflect_horizontal_resize_to_parent"] = const_528;
         param1["reflect_vertical_resize_to_parent"] = const_561;
         param1["reflect_resize_to_parent"] = const_330;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         param1["inherit_caption"] = const_1214;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
