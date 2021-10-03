package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NotEnoughBalanceMessageParser implements IMessageParser
   {
       
      
      private var var_2102:int = 0;
      
      private var var_2103:int = 0;
      
      private var var_2040:int = 0;
      
      public function NotEnoughBalanceMessageParser()
      {
         super();
      }
      
      public function get notEnoughCredits() : int
      {
         return this.var_2102;
      }
      
      public function get notEnoughActivityPoints() : int
      {
         return this.var_2103;
      }
      
      public function get activityPointType() : int
      {
         return this.var_2040;
      }
      
      public function flush() : Boolean
      {
         this.var_2102 = 0;
         this.var_2103 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2102 = param1.readInteger();
         this.var_2103 = param1.readInteger();
         this.var_2040 = param1.readInteger();
         return true;
      }
   }
}
