package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetFloodControlEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_924:String = "RWFCE_FLOOD_CONTROL";
       
      
      private var var_1981:int = 0;
      
      public function RoomWidgetFloodControlEvent(param1:int)
      {
         super(const_924,false,false);
         this.var_1981 = param1;
      }
      
      public function get seconds() : int
      {
         return this.var_1981;
      }
   }
}
