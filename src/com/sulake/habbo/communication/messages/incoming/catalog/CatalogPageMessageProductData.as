package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_64:String = "i";
      
      public static const const_77:String = "s";
      
      public static const const_193:String = "e";
       
      
      private var var_1668:String;
      
      private var var_2829:int;
      
      private var var_1114:String;
      
      private var var_1667:int;
      
      private var var_2139:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1668 = param1.readString();
         this.var_2829 = param1.readInteger();
         this.var_1114 = param1.readString();
         this.var_1667 = param1.readInteger();
         this.var_2139 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1668;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2829;
      }
      
      public function get extraParam() : String
      {
         return this.var_1114;
      }
      
      public function get productCount() : int
      {
         return this.var_1667;
      }
      
      public function get expiration() : int
      {
         return this.var_2139;
      }
   }
}
