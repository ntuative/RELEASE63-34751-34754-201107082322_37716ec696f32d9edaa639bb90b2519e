package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_2121:int;
      
      private var var_2937:int;
      
      private var var_1689:int;
      
      private var var_2918:int;
      
      private var var_142:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2121 = param1.readInteger();
         this.var_2937 = param1.readInteger();
         this.var_1689 = param1.readInteger();
         this.var_2918 = param1.readInteger();
         this.var_142 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_2121);
      }
      
      public function get callId() : int
      {
         return this.var_2121;
      }
      
      public function get callerUserId() : int
      {
         return this.var_2937;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1689;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2918;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_142;
      }
   }
}
