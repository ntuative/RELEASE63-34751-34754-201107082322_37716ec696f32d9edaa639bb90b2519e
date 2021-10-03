package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_792:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_1995:String = "inventory_effects";
      
      public static const const_1317:String = "inventory_badges";
      
      public static const const_2007:String = "inventory_clothes";
      
      public static const const_1940:String = "inventory_furniture";
       
      
      private var var_2465:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_792);
         this.var_2465 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_2465;
      }
   }
}
