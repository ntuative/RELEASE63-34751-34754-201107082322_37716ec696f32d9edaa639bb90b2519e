package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_152:String = "ROE_MOUSE_CLICK";
      
      public static const const_181:String = "ROE_MOUSE_ENTER";
      
      public static const const_609:String = "ROE_MOUSE_MOVE";
      
      public static const const_184:String = "ROE_MOUSE_LEAVE";
      
      public static const const_2284:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_572:String = "ROE_MOUSE_DOWN";
       
      
      private var var_2130:String = "";
      
      private var var_2564:Boolean;
      
      private var var_2563:Boolean;
      
      private var var_2562:Boolean;
      
      private var var_2565:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:String, param3:int, param4:String, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false)
      {
         super(param1,param3,param4,param9,param10);
         this.var_2130 = param2;
         this.var_2564 = param5;
         this.var_2563 = param6;
         this.var_2562 = param7;
         this.var_2565 = param8;
      }
      
      public function get eventId() : String
      {
         return this.var_2130;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2564;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2563;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2562;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2565;
      }
   }
}
