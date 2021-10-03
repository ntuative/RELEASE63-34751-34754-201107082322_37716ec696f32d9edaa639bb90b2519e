package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_1927:String = "pricing_model_unknown";
      
      public static const const_418:String = "pricing_model_single";
      
      public static const const_452:String = "pricing_model_multi";
      
      public static const const_677:String = "pricing_model_bundle";
      
      public static const const_1896:String = "price_type_none";
      
      public static const const_828:String = "price_type_credits";
      
      public static const const_1385:String = "price_type_activitypoints";
      
      public static const const_1212:String = "price_type_credits_and_activitypoints";
       
      
      private var var_863:String;
      
      private var var_1336:String;
      
      private var var_1355:int;
      
      private var var_2039:String;
      
      private var var_1337:int;
      
      private var var_1338:int;
      
      private var var_2040:int;
      
      private var var_263:ICatalogPage;
      
      private var var_692:IProductContainer;
      
      private var _disposed:Boolean = false;
      
      private var var_1773:int = 0;
      
      private var var_2822:int;
      
      public function Offer(param1:int, param2:String, param3:int, param4:int, param5:int, param6:int, param7:Array, param8:ICatalogPage)
      {
         super();
         this.var_1355 = param1;
         this.var_2039 = param2;
         this.var_1337 = param3;
         this.var_1338 = param4;
         this.var_2040 = param5;
         this.var_263 = param8;
         this.var_1773 = param6;
         this.analyzePricingModel(param7);
         this.analyzePriceType();
         this.createProductContainer(param7);
      }
      
      public function get clubLevel() : int
      {
         return this.var_1773;
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_263;
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
      
      public function get activityPointType() : int
      {
         return this.var_2040;
      }
      
      public function get productContainer() : IProductContainer
      {
         return this.var_692;
      }
      
      public function get pricingModel() : String
      {
         return this.var_863;
      }
      
      public function get priceType() : String
      {
         return this.var_1336;
      }
      
      public function get previewCallbackId() : int
      {
         return this.var_2822;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         this.var_2822 = param1;
      }
      
      public function dispose() : void
      {
         if(this.disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_1355 = 0;
         this.var_2039 = "";
         this.var_1337 = 0;
         this.var_1338 = 0;
         this.var_2040 = 0;
         this.var_263 = null;
         if(this.var_692 != null)
         {
            this.var_692.dispose();
            this.var_692 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(this.var_863)
         {
            case const_418:
               this.var_692 = new SingleProductContainer(this,param1);
               break;
            case const_452:
               this.var_692 = new MultiProductContainer(this,param1);
               break;
            case const_677:
               this.var_692 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + this.var_863);
         }
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               this.var_863 = const_418;
            }
            else
            {
               this.var_863 = const_452;
            }
         }
         else if(param1.length > 1)
         {
            this.var_863 = const_677;
         }
         else
         {
            this.var_863 = const_1927;
         }
      }
      
      private function analyzePriceType() : void
      {
         if(this.var_1337 > 0 && this.var_1338 > 0)
         {
            this.var_1336 = const_1212;
         }
         else if(this.var_1337 > 0)
         {
            this.var_1336 = const_828;
         }
         else if(this.var_1338 > 0)
         {
            this.var_1336 = const_1385;
         }
         else
         {
            this.var_1336 = const_1896;
         }
      }
      
      public function clone() : Offer
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc1_:Array = new Array();
         var _loc2_:IProductData = this.var_263.viewer.catalog.getProductData(this.localizationId);
         for each(_loc3_ in this.var_692.products)
         {
            _loc4_ = this.var_263.viewer.catalog.getFurnitureData(_loc3_.productClassId,_loc3_.productType);
            _loc5_ = new Product(_loc3_.productType,_loc3_.productClassId,_loc3_.extraParam,_loc3_.productCount,_loc3_.expiration,_loc2_,_loc4_);
            _loc1_.push(_loc5_);
         }
         return new Offer(this.offerId,this.localizationId,this.priceInCredits,this.priceInActivityPoints,this.activityPointType,this.clubLevel,_loc1_,this.page);
      }
   }
}
