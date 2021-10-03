package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var var_1355:int;
      
      private var var_1827:String;
      
      private var var_1742:int;
      
      private var _upgrade:Boolean;
      
      private var var_2605:Boolean;
      
      private var var_2606:int;
      
      private var var_2607:int;
      
      private var var_2604:int;
      
      private var var_2602:int;
      
      private var var_2603:int;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1355 = param1.readInteger();
         this.var_1827 = param1.readString();
         this.var_1742 = param1.readInteger();
         this._upgrade = param1.readBoolean();
         this.var_2605 = param1.readBoolean();
         this.var_2606 = param1.readInteger();
         this.var_2607 = param1.readInteger();
         this.var_2604 = param1.readInteger();
         this.var_2602 = param1.readInteger();
         this.var_2603 = param1.readInteger();
      }
      
      public function get offerId() : int
      {
         return this.var_1355;
      }
      
      public function get productCode() : String
      {
         return this.var_1827;
      }
      
      public function get price() : int
      {
         return this.var_1742;
      }
      
      public function get upgrade() : Boolean
      {
         return this._upgrade;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2605;
      }
      
      public function get periods() : int
      {
         return this.var_2606;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2607;
      }
      
      public function get year() : int
      {
         return this.var_2604;
      }
      
      public function get month() : int
      {
         return this.var_2602;
      }
      
      public function get day() : int
      {
         return this.var_2603;
      }
   }
}
