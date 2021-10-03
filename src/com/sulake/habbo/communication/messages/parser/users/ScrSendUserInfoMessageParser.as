package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_2226:int = 1;
      
      public static const RESPONSE_TYPE_PURCHASE:int = 2;
      
      public static const const_1310:int = 3;
       
      
      private var var_973:String;
      
      private var var_2679:int;
      
      private var var_2681:int;
      
      private var var_2678:int;
      
      private var var_2677:int;
      
      private var var_2682:Boolean;
      
      private var var_2452:Boolean;
      
      private var var_2454:int;
      
      private var var_2453:int;
      
      private var var_2683:Boolean;
      
      private var var_2680:int;
      
      private var var_2684:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_973 = param1.readString();
         this.var_2679 = param1.readInteger();
         this.var_2681 = param1.readInteger();
         this.var_2678 = param1.readInteger();
         this.var_2677 = param1.readInteger();
         this.var_2682 = param1.readBoolean();
         this.var_2452 = param1.readBoolean();
         this.var_2454 = param1.readInteger();
         this.var_2453 = param1.readInteger();
         this.var_2683 = param1.readBoolean();
         this.var_2680 = param1.readInteger();
         this.var_2684 = param1.readInteger();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_973;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return this.var_2679;
      }
      
      public function get memberPeriods() : int
      {
         return this.var_2681;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return this.var_2678;
      }
      
      public function get responseType() : int
      {
         return this.var_2677;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return this.var_2682;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2452;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2454;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2453;
      }
      
      public function get isShowBasicPromo() : Boolean
      {
         return this.var_2683;
      }
      
      public function get basicNormalPrice() : int
      {
         return this.var_2680;
      }
      
      public function get basicPromoPrice() : int
      {
         return this.var_2684;
      }
   }
}
