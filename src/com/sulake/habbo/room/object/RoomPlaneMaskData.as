package com.sulake.habbo.room.object
{
   public class RoomPlaneMaskData
   {
       
      
      private var var_2277:Number = 0.0;
      
      private var var_2278:Number = 0.0;
      
      private var var_2702:Number = 0.0;
      
      private var var_2701:Number = 0.0;
      
      public function RoomPlaneMaskData(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         this.var_2277 = param1;
         this.var_2278 = param2;
         this.var_2702 = param3;
         this.var_2701 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return this.var_2277;
      }
      
      public function get rightSideLoc() : Number
      {
         return this.var_2278;
      }
      
      public function get leftSideLength() : Number
      {
         return this.var_2702;
      }
      
      public function get rightSideLength() : Number
      {
         return this.var_2701;
      }
   }
}
