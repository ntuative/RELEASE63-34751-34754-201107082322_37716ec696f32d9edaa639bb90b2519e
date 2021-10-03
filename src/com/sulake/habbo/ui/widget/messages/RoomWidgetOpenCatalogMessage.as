package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_856:String = "RWGOI_MESSAGE_OPEN_CATALOG";
      
      public static const const_1393:String = "RWOCM_CLUB_MAIN";
      
      public static const const_2294:String = "RWOCM_PIXELS";
      
      public static const const_2189:String = "RWOCM_CREDITS";
      
      public static const const_2330:String = "RWOCM_SHELLS";
       
      
      private var var_2882:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_856);
         this.var_2882 = param1;
      }
      
      public function get pageKey() : String
      {
         return this.var_2882;
      }
   }
}
