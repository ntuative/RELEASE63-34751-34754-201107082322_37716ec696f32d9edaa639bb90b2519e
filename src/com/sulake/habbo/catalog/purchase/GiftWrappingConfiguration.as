package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_1523:Boolean = false;
      
      private var var_1742:int;
      
      private var var_2041:Array;
      
      private var var_880:Array;
      
      private var var_879:Array;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         this.var_1523 = _loc2_.isWrappingEnabled;
         this.var_1742 = _loc2_.wrappingPrice;
         this.var_2041 = _loc2_.stuffTypes;
         this.var_880 = _loc2_.boxTypes;
         this.var_879 = _loc2_.ribbonTypes;
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1523;
      }
      
      public function get price() : int
      {
         return this.var_1742;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_2041;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_880;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_879;
      }
   }
}
