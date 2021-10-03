package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendRequestData
   {
       
      
      private var var_1173:int;
      
      private var var_2689:String;
      
      private var var_2690:int;
      
      private var var_2296:String;
      
      public function FriendRequestData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1173 = param1.readInteger();
         this.var_2689 = param1.readString();
         this.var_2296 = param1.readString();
         this.var_2690 = this.var_1173;
      }
      
      public function get requestId() : int
      {
         return this.var_1173;
      }
      
      public function get requesterName() : String
      {
         return this.var_2689;
      }
      
      public function get requesterUserId() : int
      {
         return this.var_2690;
      }
      
      public function get figureString() : String
      {
         return this.var_2296;
      }
   }
}
