package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_2297:int;
      
      private var var_2808:int;
      
      private var var_2809:int;
      
      private var _dayOffsets:Array;
      
      private var var_2019:Array;
      
      private var var_2020:Array;
      
      private var var_2807:int;
      
      private var var_2810:int;
      
      public function MarketplaceItemStats()
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
      
      public function set averagePrice(param1:int) : void
      {
         this.var_2297 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_2808 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         this.var_2809 = param1;
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         this._dayOffsets = param1.slice();
      }
      
      public function set averagePrices(param1:Array) : void
      {
         this.var_2019 = param1.slice();
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         this.var_2020 = param1.slice();
      }
      
      public function set furniTypeId(param1:int) : void
      {
         this.var_2807 = param1;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         this.var_2810 = param1;
      }
   }
}
