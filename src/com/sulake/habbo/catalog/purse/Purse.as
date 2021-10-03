package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
       
      
      private var var_2146:int = 0;
      
      private var var_1509:Dictionary;
      
      private var var_1844:int = 0;
      
      private var var_1843:int = 0;
      
      private var var_2452:Boolean = false;
      
      private var var_2454:int = 0;
      
      private var var_2453:int = 0;
      
      private var var_2455:Boolean = false;
      
      public function Purse()
      {
         this.var_1509 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_2146;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_2146 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1844;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1844 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1843;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1843 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_1844 > 0 || this.var_1843 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2452;
      }
      
      public function get isExpiring() : Boolean
      {
         return this.var_2455;
      }
      
      public function set isExpiring(param1:Boolean) : void
      {
         this.var_2455 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2452 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2454;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_2454 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2453;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_2453 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1509;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1509 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1509[param1];
      }
   }
}
