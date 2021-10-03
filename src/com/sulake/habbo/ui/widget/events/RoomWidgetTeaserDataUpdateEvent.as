package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetTeaserDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_522:String = "RWTDUE_TEASER_DATA";
      
      public static const const_962:String = "RWTDUE_GIFT_DATA";
      
      public static const const_969:String = "RWTDUE_GIFT_RECEIVED";
       
      
      private var var_237:int;
      
      private var _data:String;
      
      private var var_432:int;
      
      private var var_204:String;
      
      private var var_2302:String;
      
      private var var_2301:Boolean;
      
      private var var_1640:int = 0;
      
      private var var_2868:String;
      
      public function RoomWidgetTeaserDataUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function get objectId() : int
      {
         return this.var_237;
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function get status() : int
      {
         return this.var_432;
      }
      
      public function get firstClickUserName() : String
      {
         return this.var_2302;
      }
      
      public function get giftWasReceived() : Boolean
      {
         return this.var_2301;
      }
      
      public function get ownRealName() : String
      {
         return this.var_2868;
      }
      
      public function get itemCategory() : int
      {
         return this.var_1640;
      }
      
      public function set status(param1:int) : void
      {
         this.var_432 = param1;
      }
      
      public function set data(param1:String) : void
      {
         this._data = param1;
      }
      
      public function set firstClickUserName(param1:String) : void
      {
         this.var_2302 = param1;
      }
      
      public function set giftWasReceived(param1:Boolean) : void
      {
         this.var_2301 = param1;
      }
      
      public function set ownRealName(param1:String) : void
      {
         this.var_2868 = param1;
      }
      
      public function set objectId(param1:int) : void
      {
         this.var_237 = param1;
      }
      
      public function get campaignID() : String
      {
         return this.var_204;
      }
      
      public function set campaignID(param1:String) : void
      {
         this.var_204 = param1;
      }
      
      public function set itemCategory(param1:int) : void
      {
         this.var_1640 = param1;
      }
   }
}
