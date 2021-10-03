package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomEntryData;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_2074:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_220:MsgWithRequestId;
      
      private var var_643:RoomEventData;
      
      private var var_2506:Boolean;
      
      private var var_2501:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      private var var_2356:int;
      
      private var var_277:GuestRoomData;
      
      private var var_995:PublicRoomShortData;
      
      private var var_2504:int;
      
      private var var_2507:Boolean;
      
      private var var_2499:int;
      
      private var var_2502:Boolean;
      
      private var var_1865:int;
      
      private var var_2508:Boolean;
      
      private var var_1441:Array;
      
      private var var_1519:Array;
      
      private var var_2500:int;
      
      private var var_1520:int;
      
      private var _favouriteIds:Dictionary;
      
      private var var_1238:Boolean;
      
      private var var_2509:int;
      
      private var var_2505:Boolean;
      
      private var var_2503:int = 0;
      
      private var var_1866:OfficialRoomEntryData;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         this.var_1441 = new Array();
         this.var_1519 = new Array();
         this._favouriteIds = new Dictionary();
         super();
         this._navigator = param1;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return this.var_277 != null && !this._currentRoomOwner;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return this.var_277 != null && this._currentRoomOwner;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         this.var_995 = null;
         this.var_277 = null;
         this._currentRoomOwner = false;
         if(param1.privateRoom)
         {
            this._currentRoomOwner = param1.owner;
         }
         else
         {
            this.var_995 = param1.publicSpace;
            this.var_643 = null;
         }
      }
      
      public function onRoomExit() : void
      {
         if(this.var_643 != null)
         {
            this.var_643.dispose();
            this.var_643 = null;
         }
         if(this.var_995 != null)
         {
            this.var_995.dispose();
            this.var_995 = null;
         }
         if(this.var_277 != null)
         {
            this.var_277.dispose();
            this.var_277 = null;
         }
         this._currentRoomOwner = false;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(this.var_277 != null)
         {
            this.var_277.dispose();
         }
         this.var_277 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(this.var_643 != null)
         {
            this.var_643.dispose();
         }
         this.var_643 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return this.var_220 != null && this.var_220 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return this.var_220 != null && this.var_220 as GuestRoomSearchResultData != null;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return this.var_220 != null && this.var_220 as OfficialRoomsData != null;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         this.disposeCurrentMsg();
         this.var_220 = param1;
         this.var_1866 = param1.ad;
         this.var_1238 = false;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         this.disposeCurrentMsg();
         this.var_220 = param1;
         this.var_1238 = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         this.disposeCurrentMsg();
         this.var_220 = param1;
         this.var_1238 = false;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(this.var_220 == null)
         {
            return;
         }
         this.var_220.dispose();
         this.var_220 = null;
      }
      
      public function set adRoom(param1:OfficialRoomEntryData) : void
      {
         this.var_1866 = param1;
      }
      
      public function get adRoom() : OfficialRoomEntryData
      {
         return this.var_1866;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return this.var_220 as GuestRoomSearchResultData;
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return this.var_220 as PopularRoomTagsData;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return this.var_220 as OfficialRoomsData;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return this.var_643;
      }
      
      public function get avatarId() : int
      {
         return this.var_2356;
      }
      
      public function get eventMod() : Boolean
      {
         return this.var_2506;
      }
      
      public function get roomPicker() : Boolean
      {
         return this.var_2501;
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return this._currentRoomOwner;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return this.var_277;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return this.var_995;
      }
      
      public function get hcMember() : Boolean
      {
         return this.var_2507;
      }
      
      public function get createdFlatId() : int
      {
         return this.var_2499;
      }
      
      public function get homeRoomId() : int
      {
         return this.var_1865;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return this.var_2502;
      }
      
      public function get currentRoomRating() : int
      {
         return this.var_2509;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return this.var_2504;
      }
      
      public function get settingsReceived() : Boolean
      {
         return this.var_2508;
      }
      
      public function get adIndex() : int
      {
         return this.var_2503;
      }
      
      public function get currentRoomIsStaffPick() : Boolean
      {
         return this.var_2505;
      }
      
      public function set avatarId(param1:int) : void
      {
         this.var_2356 = param1;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         this.var_2499 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         this.var_2507 = param1;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         this.var_2506 = param1;
      }
      
      public function set roomPicker(param1:Boolean) : void
      {
         this.var_2501 = param1;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         this.var_2502 = param1;
      }
      
      public function set homeRoomId(param1:int) : void
      {
         this.var_1865 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         this.var_2509 = param1;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         this.var_2504 = param1;
      }
      
      public function set settingsReceived(param1:Boolean) : void
      {
         this.var_2508 = param1;
      }
      
      public function set adIndex(param1:int) : void
      {
         this.var_2503 = param1;
      }
      
      public function set currentRoomIsStaffPick(param1:Boolean) : void
      {
         this.var_2505 = param1;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         this.var_1441 = param1;
         this.var_1519 = new Array();
         for each(_loc2_ in this.var_1441)
         {
            if(_loc2_.visible)
            {
               this.var_1519.push(_loc2_);
            }
         }
      }
      
      public function get allCategories() : Array
      {
         return this.var_1441;
      }
      
      public function get visibleCategories() : Array
      {
         return this.var_1519;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2500 = param1.limit;
         this.var_1520 = param1.favouriteRoomIds.length;
         this._favouriteIds = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this._favouriteIds[_loc2_] = "yes";
         }
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         this._favouriteIds[param1] = !!param2 ? "yes" : null;
         this.var_1520 += !!param2 ? 1 : -1;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = this.var_277.flatId;
         return this._favouriteIds[_loc1_] != null;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(this.var_277 == null)
         {
            return false;
         }
         var _loc1_:int = this.var_277.flatId;
         return this.var_1865 == _loc1_;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return this._favouriteIds[param1] != null;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return this.var_1520 >= this.var_2500;
      }
      
      public function startLoading() : void
      {
         this.var_1238 = true;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_1238;
      }
   }
}
