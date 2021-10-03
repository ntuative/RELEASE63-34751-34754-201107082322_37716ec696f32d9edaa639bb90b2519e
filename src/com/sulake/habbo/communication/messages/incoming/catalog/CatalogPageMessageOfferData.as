package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageOfferData
   {
       
      
      private var var_1355:int;
      
      private var var_2039:String;
      
      private var var_1337:int;
      
      private var var_1338:int;
      
      private var var_2040:int;
      
      private var var_1773:int;
      
      private var var_1295:Array;
      
      public function CatalogPageMessageOfferData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1355 = param1.readInteger();
         this.var_2039 = param1.readString();
         this.var_1337 = param1.readInteger();
         this.var_1338 = param1.readInteger();
         this.var_2040 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this.var_1295 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.var_1295.push(new CatalogPageMessageProductData(param1));
            _loc3_++;
         }
         this.var_1773 = param1.readInteger();
      }
      
      public function get offerId() : int
      {
         return this.var_1355;
      }
      
      public function get localizationId() : String
      {
         return this.var_2039;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1337;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1338;
      }
      
      public function get products() : Array
      {
         return this.var_1295;
      }
      
      public function get activityPointType() : int
      {
         return this.var_2040;
      }
      
      public function get clubLevel() : int
      {
         return this.var_1773;
      }
   }
}
