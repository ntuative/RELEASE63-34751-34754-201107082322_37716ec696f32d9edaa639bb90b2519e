package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1523:Boolean;
      
      private var var_2383:int;
      
      private var var_1797:int;
      
      private var var_1796:int;
      
      private var var_2380:int;
      
      private var var_2382:int;
      
      private var var_2386:int;
      
      private var var_2385:int;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1523;
      }
      
      public function get commission() : int
      {
         return this.var_2383;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_1797;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_1796;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_2382;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_2380;
      }
      
      public function get expirationHours() : int
      {
         return this.var_2386;
      }
      
      public function get averagePricePeriod() : int
      {
         return this.var_2385;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1523 = param1.readBoolean();
         this.var_2383 = param1.readInteger();
         this.var_1797 = param1.readInteger();
         this.var_1796 = param1.readInteger();
         this.var_2382 = param1.readInteger();
         this.var_2380 = param1.readInteger();
         this.var_2386 = param1.readInteger();
         this.var_2385 = param1.readInteger();
         return true;
      }
   }
}
