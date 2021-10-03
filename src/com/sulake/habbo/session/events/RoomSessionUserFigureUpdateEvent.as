package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionUserFigureUpdateEvent extends RoomSessionEvent
   {
      
      public static const const_187:String = "RSUBE_FIGURE";
       
      
      private var _userId:int = 0;
      
      private var _figure:String = "";
      
      private var var_997:String = "";
      
      private var var_1952:String = "";
      
      private var var_2419:int;
      
      public function RoomSessionUserFigureUpdateEvent(param1:IRoomSession, param2:int, param3:String, param4:String, param5:String, param6:int, param7:Boolean = false, param8:Boolean = false)
      {
         super(const_187,param1,param7,param8);
         this._userId = param2;
         this._figure = param3;
         this.var_997 = param4;
         this.var_1952 = param5;
         this.var_2419 = param6;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function get gender() : String
      {
         return this.var_997;
      }
      
      public function get customInfo() : String
      {
         return this.var_1952;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2419;
      }
   }
}
