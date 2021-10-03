package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_1257:String;
      
      private var var_1521:Array;
      
      private var var_1174:Array;
      
      private var var_1868:int;
      
      public function VoteResultMessageParser()
      {
         super();
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
      
      public function flush() : Boolean
      {
         this.var_1257 = "";
         this.var_1521 = [];
         this.var_1174 = [];
         this.var_1868 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1257 = param1.readString();
         this.var_1521 = [];
         this.var_1174 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            this.var_1521.push(param1.readString());
            this.var_1174.push(param1.readInteger());
            _loc3_++;
         }
         this.var_1868 = param1.readInteger();
         return true;
      }
   }
}
