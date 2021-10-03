package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_2955:int;
      
      private var var_2953:int;
      
      private var var_2952:int;
      
      private var var_2954:String;
      
      private var var_1733:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2955 = param1.readInteger();
         this.var_2953 = param1.readInteger();
         this.var_2952 = param1.readInteger();
         this.var_2954 = param1.readString();
         this.var_1733 = param1.readString();
      }
      
      public function get hour() : int
      {
         return this.var_2955;
      }
      
      public function get minute() : int
      {
         return this.var_2953;
      }
      
      public function get chatterId() : int
      {
         return this.var_2952;
      }
      
      public function get chatterName() : String
      {
         return this.var_2954;
      }
      
      public function get msg() : String
      {
         return this.var_1733;
      }
   }
}
