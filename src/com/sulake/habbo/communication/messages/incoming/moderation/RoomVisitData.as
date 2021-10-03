package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitData
   {
       
      
      private var var_2187:Boolean;
      
      private var _roomId:int;
      
      private var var_987:String;
      
      private var var_2628:int;
      
      private var var_2629:int;
      
      public function RoomVisitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2187 = param1.readBoolean();
         this._roomId = param1.readInteger();
         this.var_987 = param1.readString();
         this.var_2628 = param1.readInteger();
         this.var_2629 = param1.readInteger();
      }
      
      public function get isPublic() : Boolean
      {
         return this.var_2187;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomName() : String
      {
         return this.var_987;
      }
      
      public function get enterHour() : int
      {
         return this.var_2628;
      }
      
      public function get enterMinute() : int
      {
         return this.var_2629;
      }
   }
}
