package com.sulake.habbo.sound.music
{
   import flash.utils.getTimer;
   
   public class SongStartRequestData
   {
       
      
      private var var_1732:int;
      
      private var var_1873:Number;
      
      private var var_2523:Number;
      
      private var var_2522:int;
      
      private var var_2520:Number;
      
      private var var_2521:Number;
      
      public function SongStartRequestData(param1:int, param2:Number, param3:Number, param4:Number = 2.0, param5:Number = 1.0)
      {
         super();
         this.var_1732 = param1;
         this.var_1873 = param2;
         this.var_2523 = param3;
         this.var_2520 = param4;
         this.var_2521 = param5;
         this.var_2522 = getTimer();
      }
      
      public function get songId() : int
      {
         return this.var_1732;
      }
      
      public function get startPos() : Number
      {
         if(this.var_1873 < 0)
         {
            return 0;
         }
         return this.var_1873 + (getTimer() - this.var_2522) / 1000;
      }
      
      public function get playLength() : Number
      {
         return this.var_2523;
      }
      
      public function get fadeInSeconds() : Number
      {
         return this.var_2520;
      }
      
      public function get fadeOutSeconds() : Number
      {
         return this.var_2521;
      }
   }
}
