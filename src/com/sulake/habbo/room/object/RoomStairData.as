package com.sulake.habbo.room.object
{
   public class RoomStairData
   {
       
      
      private var var_2630:int;
      
      private var var_1929:Boolean;
      
      private var var_1930:Boolean;
      
      private var var_47:Boolean;
      
      public function RoomStairData(param1:int, param2:Boolean, param3:Boolean, param4:Boolean)
      {
         super();
         this.var_47 = param4;
         this.var_2630 = param1;
         this.var_1929 = param2;
         this.var_1930 = param3;
      }
      
      public function get stairHeight() : int
      {
         return this.var_2630;
      }
      
      public function get neighbourStairMin() : Boolean
      {
         return this.var_1929;
      }
      
      public function get neighbourStairMax() : Boolean
      {
         return this.var_1930;
      }
      
      public function get neighbourStair() : Boolean
      {
         return this.var_1929 || this.var_1930;
      }
      
      public function get border() : Boolean
      {
         return this.var_47;
      }
   }
}
