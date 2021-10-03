package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_280:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_2585:int = 0;
      
      private var var_2586:int = 0;
      
      private var var_2584:int = 0;
      
      private var var_2587:Boolean = false;
      
      private var var_1773:int;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_280,param6,param7);
         this.var_2585 = param1;
         this.var_2586 = param2;
         this.var_2584 = param3;
         this.var_2587 = param4;
         this.var_1773 = param5;
      }
      
      public function get daysLeft() : int
      {
         return this.var_2585;
      }
      
      public function get periodsLeft() : int
      {
         return this.var_2586;
      }
      
      public function get pastPeriods() : int
      {
         return this.var_2584;
      }
      
      public function get allowClubDances() : Boolean
      {
         return this.var_2587;
      }
      
      public function get clubLevel() : int
      {
         return this.var_1773;
      }
   }
}
