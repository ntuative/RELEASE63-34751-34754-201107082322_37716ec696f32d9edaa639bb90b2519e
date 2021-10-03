package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_373:int;
      
      private var var_924:Boolean;
      
      private var var_987:String;
      
      private var _ownerName:String;
      
      private var var_2282:int;
      
      private var var_2307:int;
      
      private var var_2306:int;
      
      private var var_1720:String;
      
      private var var_2310:int;
      
      private var var_2312:Boolean;
      
      private var var_907:int;
      
      private var var_1537:int;
      
      private var var_2308:String;
      
      private var var_939:Array;
      
      private var var_2309:RoomThumbnailData;
      
      private var var_2283:Boolean;
      
      private var var_2311:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_939 = new Array();
         super();
         this.var_373 = param1.readInteger();
         this.var_924 = param1.readBoolean();
         this.var_987 = param1.readString();
         this._ownerName = param1.readString();
         this.var_2282 = param1.readInteger();
         this.var_2307 = param1.readInteger();
         this.var_2306 = param1.readInteger();
         this.var_1720 = param1.readString();
         this.var_2310 = param1.readInteger();
         this.var_2312 = param1.readBoolean();
         this.var_907 = param1.readInteger();
         this.var_1537 = param1.readInteger();
         this.var_2308 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_939.push(_loc4_);
            _loc3_++;
         }
         this.var_2309 = new RoomThumbnailData(param1);
         this.var_2283 = param1.readBoolean();
         this.var_2311 = param1.readBoolean();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_939 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get flatId() : int
      {
         return this.var_373;
      }
      
      public function get event() : Boolean
      {
         return this.var_924;
      }
      
      public function get roomName() : String
      {
         return this.var_987;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_2282;
      }
      
      public function get userCount() : int
      {
         return this.var_2307;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2306;
      }
      
      public function get description() : String
      {
         return this.var_1720;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2310;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2312;
      }
      
      public function get score() : int
      {
         return this.var_907;
      }
      
      public function get categoryId() : int
      {
         return this.var_1537;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2308;
      }
      
      public function get tags() : Array
      {
         return this.var_939;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2309;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2283;
      }
      
      public function get displayRoomEntryAd() : Boolean
      {
         return this.var_2311;
      }
   }
}
