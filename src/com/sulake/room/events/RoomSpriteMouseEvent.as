package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var _type:String = "";
      
      private var var_2130:String = "";
      
      private var var_1895:String = "";
      
      private var var_2447:String = "";
      
      private var var_2958:Number = 0;
      
      private var var_2957:Number = 0;
      
      private var var_2874:Number = 0;
      
      private var var_2877:Number = 0;
      
      private var var_2563:Boolean = false;
      
      private var var_2564:Boolean = false;
      
      private var var_2562:Boolean = false;
      
      private var var_2565:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:String, param5:Number, param6:Number, param7:Number = 0, param8:Number = 0, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false, param12:Boolean = false)
      {
         super();
         this._type = param1;
         this.var_2130 = param2;
         this.var_1895 = param3;
         this.var_2447 = param4;
         this.var_2958 = param5;
         this.var_2957 = param6;
         this.var_2874 = param7;
         this.var_2877 = param8;
         this.var_2563 = param9;
         this.var_2564 = param10;
         this.var_2562 = param11;
         this.var_2565 = param12;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get eventId() : String
      {
         return this.var_2130;
      }
      
      public function get canvasId() : String
      {
         return this.var_1895;
      }
      
      public function get spriteTag() : String
      {
         return this.var_2447;
      }
      
      public function get screenX() : Number
      {
         return this.var_2958;
      }
      
      public function get screenY() : Number
      {
         return this.var_2957;
      }
      
      public function get localX() : Number
      {
         return this.var_2874;
      }
      
      public function get localY() : Number
      {
         return this.var_2877;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2563;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2564;
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
