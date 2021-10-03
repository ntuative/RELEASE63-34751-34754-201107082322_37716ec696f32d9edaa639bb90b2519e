package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_852;
         param1["badge"] = const_754;
         param1["bitmap"] = const_435;
         param1["border"] = const_982;
         param1["border_notify"] = const_1780;
         param1["bubble"] = const_940;
         param1["bubble_pointer_up"] = const_1172;
         param1["bubble_pointer_right"] = const_1403;
         param1["bubble_pointer_down"] = const_1251;
         param1["bubble_pointer_left"] = const_1294;
         param1["button"] = const_671;
         param1["button_thick"] = const_932;
         param1["button_icon"] = const_1815;
         param1["button_group_left"] = const_878;
         param1["button_group_center"] = const_965;
         param1["button_group_right"] = const_975;
         param1["canvas"] = const_747;
         param1["checkbox"] = const_758;
         param1["closebutton"] = const_1303;
         param1["container"] = const_443;
         param1["container_button"] = const_769;
         param1["display_object_wrapper"] = const_802;
         param1["dropmenu"] = const_623;
         param1["dropmenu_item"] = const_637;
         param1["frame"] = const_441;
         param1["frame_notify"] = const_1924;
         param1["header"] = const_755;
         param1["html"] = const_1164;
         param1["icon"] = const_1209;
         param1["itemgrid"] = const_1204;
         param1["itemgrid_horizontal"] = const_610;
         param1["itemgrid_vertical"] = const_781;
         param1["itemlist"] = WINDOW_TYPE_ITEMLIST;
         param1["itemlist_horizontal"] = const_438;
         param1["itemlist_vertical"] = const_460;
         param1["label"] = const_809;
         param1["maximizebox"] = const_1991;
         param1["menu"] = const_1981;
         param1["menu_item"] = const_1876;
         param1["submenu"] = const_1226;
         param1["minimizebox"] = const_1938;
         param1["notify"] = const_2010;
         param1["null"] = const_1026;
         param1["password"] = const_1003;
         param1["radiobutton"] = const_922;
         param1["region"] = const_370;
         param1["restorebox"] = const_1862;
         param1["scaler"] = const_534;
         param1["scaler_horizontal"] = const_1985;
         param1["scaler_vertical"] = const_1806;
         param1["scrollbar_horizontal"] = const_514;
         param1["scrollbar_vertical"] = const_955;
         param1["scrollbar_slider_button_up"] = const_1359;
         param1["scrollbar_slider_button_down"] = const_1279;
         param1["scrollbar_slider_button_left"] = const_1276;
         param1["scrollbar_slider_button_right"] = const_1323;
         param1["scrollbar_slider_bar_horizontal"] = const_1357;
         param1["scrollbar_slider_bar_vertical"] = const_1270;
         param1["scrollbar_slider_track_horizontal"] = const_1244;
         param1["scrollbar_slider_track_vertical"] = const_1346;
         param1["scrollable_itemlist"] = const_1910;
         param1["scrollable_itemlist_vertical"] = const_562;
         param1["scrollable_itemlist_horizontal"] = const_1252;
         param1["selector"] = const_811;
         param1["selector_list"] = const_832;
         param1["submenu"] = const_1226;
         param1["tab_button"] = const_1006;
         param1["tab_container_button"] = const_1328;
         param1["tab_context"] = const_439;
         param1["tab_content"] = const_1401;
         param1["tab_selector"] = const_974;
         param1["text"] = const_954;
         param1["input"] = const_925;
         param1["toolbar"] = const_1810;
         param1["tooltip"] = const_446;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
