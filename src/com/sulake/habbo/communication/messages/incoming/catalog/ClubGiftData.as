package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubGiftData
   {
       
      
      private var var_1355:int;
      
      private var var_2973:Boolean;
      
      private var var_2313:Boolean;
      
      private var var_2972:int;
      
      public function ClubGiftData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1355 = param1.readInteger();
         this.var_2973 = param1.readBoolean();
         this.var_2972 = param1.readInteger();
         this.var_2313 = param1.readBoolean();
      }
      
      public function get offerId() : int
      {
         return this.var_1355;
      }
      
      public function get isVip() : Boolean
      {
         return this.var_2973;
      }
      
      public function get isSelectable() : Boolean
      {
         return this.var_2313;
      }
      
      public function get daysRequired() : int
      {
         return this.var_2972;
      }
   }
}
