package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_176:Number = 0;
      
      private var var_175:Number = 0;
      
      private var var_2789:Number = 0;
      
      private var var_2788:Number = 0;
      
      private var var_2792:Number = 0;
      
      private var var_2791:Number = 0;
      
      private var var_494:int = 0;
      
      private var var_2497:int = 0;
      
      private var var_361:Array;
      
      private var var_2790:Boolean = false;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         this.var_361 = [];
         super();
         this._id = param1;
         this._x = param2;
         this.var_176 = param3;
         this.var_175 = param4;
         this.var_2789 = param5;
         this.var_494 = param6;
         this.var_2497 = param7;
         this.var_2788 = param8;
         this.var_2792 = param9;
         this.var_2791 = param10;
         this.var_2790 = param11;
         this.var_361 = param12;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_176;
      }
      
      public function get z() : Number
      {
         return this.var_175;
      }
      
      public function get localZ() : Number
      {
         return this.var_2789;
      }
      
      public function get targetX() : Number
      {
         return this.var_2788;
      }
      
      public function get targetY() : Number
      {
         return this.var_2792;
      }
      
      public function get targetZ() : Number
      {
         return this.var_2791;
      }
      
      public function get dir() : int
      {
         return this.var_494;
      }
      
      public function get dirHead() : int
      {
         return this.var_2497;
      }
      
      public function get isMoving() : Boolean
      {
         return this.var_2790;
      }
      
      public function get actions() : Array
      {
         return this.var_361.slice();
      }
   }
}
