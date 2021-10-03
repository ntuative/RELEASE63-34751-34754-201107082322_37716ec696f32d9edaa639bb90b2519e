package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_170:String = "RWPUE_VOTE_QUESTION";
      
      public static const const_148:String = "RWPUE_VOTE_RESULT";
       
      
      private var var_1257:String;
      
      private var var_1521:Array;
      
      private var var_1174:Array;
      
      private var var_1868:int;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this.var_1257 = param2;
         this.var_1521 = param3;
         this.var_1174 = param4;
         if(this.var_1174 == null)
         {
            this.var_1174 = [];
         }
         this.var_1868 = param5;
      }
      
      public function get question() : String
      {
         return this.var_1257;
      }
      
      public function get choices() : Array
      {
         return this.var_1521.slice();
      }
      
      public function get votes() : Array
      {
         return this.var_1174.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_1868;
      }
   }
}
