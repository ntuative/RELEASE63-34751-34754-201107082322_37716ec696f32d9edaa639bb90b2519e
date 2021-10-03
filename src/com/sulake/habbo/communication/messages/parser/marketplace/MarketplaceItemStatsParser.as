package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_2297:int;
      
      private var var_2808:int;
      
      private var var_2809:int;
      
      private var _dayOffsets:Array;
      
      private var var_2019:Array;
      
      private var var_2020:Array;
      
      private var var_2807:int;
      
      private var var_2810:int;
      
      public function MarketplaceItemStatsParser()
      {
         super();
      }
      
      public function get averagePrice() : int
      {
         return this.var_2297;
      }
      
      public function get offerCount() : int
      {
         return this.var_2808;
      }
      
      public function get historyLength() : int
      {
         return this.var_2809;
      }
      
      public function get dayOffsets() : Array
      {
         return this._dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return this.var_2019;
      }
      
      public function get soldAmounts() : Array
      {
         return this.var_2020;
      }
      
      public function get furniTypeId() : int
      {
         return this.var_2807;
      }
      
      public function get furniCategoryId() : int
      {
         return this.var_2810;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2297 = param1.readInteger();
         this.var_2808 = param1.readInteger();
         this.var_2809 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this._dayOffsets = [];
         this.var_2019 = [];
         this.var_2020 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this._dayOffsets.push(param1.readInteger());
            this.var_2019.push(param1.readInteger());
            this.var_2020.push(param1.readInteger());
            _loc3_++;
         }
         this.var_2810 = param1.readInteger();
         this.var_2807 = param1.readInteger();
         return true;
      }
   }
}
