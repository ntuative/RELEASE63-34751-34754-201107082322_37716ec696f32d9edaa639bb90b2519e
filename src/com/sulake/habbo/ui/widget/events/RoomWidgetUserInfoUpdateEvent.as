package com.sulake.habbo.ui.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_110:String = "RWUIUE_OWN_USER";
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_163:String = "RWUIUE_PEER";
      
      public static const TRADE_REASON_OK:int = 0;
      
      public static const const_915:int = 2;
      
      public static const const_978:int = 3;
      
      public static const const_1999:String = "BOT";
       
      
      private var _name:String = "";
      
      private var var_1953:String = "";
      
      private var var_2419:int;
      
      private var var_2543:int = 0;
      
      private var var_2540:int = 0;
      
      private var _figure:String = "";
      
      private var var_48:BitmapData = null;
      
      private var var_256:Array;
      
      private var var_1437:int = 0;
      
      private var var_2580:String = "";
      
      private var var_2572:int = 0;
      
      private var var_2570:int = 0;
      
      private var var_1982:Boolean = false;
      
      private var var_1954:String = "";
      
      private var var_2256:Boolean = false;
      
      private var var_2579:Boolean = false;
      
      private var var_2575:Boolean = true;
      
      private var var_1185:int = 0;
      
      private var var_2581:Boolean = false;
      
      private var var_2578:Boolean = false;
      
      private var var_2571:Boolean = false;
      
      private var var_2573:Boolean = false;
      
      private var var_2577:Boolean = false;
      
      private var var_2574:Boolean = false;
      
      private var var_2576:int = 0;
      
      private var var_1984:Boolean = false;
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         this.var_256 = [];
         super(param1,param2,param3);
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1953 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_1953;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2419 = param1;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2419;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2543 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2543;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2540 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2540;
      }
      
      public function set figure(param1:String) : void
      {
         this._figure = param1;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_48 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_48;
      }
      
      public function set badges(param1:Array) : void
      {
         this.var_256 = param1;
      }
      
      public function get badges() : Array
      {
         return this.var_256;
      }
      
      public function set groupId(param1:int) : void
      {
         this.var_1437 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1437;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         this.var_2580 = param1;
      }
      
      public function get groupBadgeId() : String
      {
         return this.var_2580;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         this.var_2579 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return this.var_2579;
      }
      
      public function set respectLeft(param1:int) : void
      {
         this.var_1185 = param1;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1185;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         this.var_2581 = param1;
      }
      
      public function get isIgnored() : Boolean
      {
         return this.var_2581;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         this.var_2578 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return this.var_2578;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         this.var_2571 = param1;
      }
      
      public function get amIController() : Boolean
      {
         return this.var_2571;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         this.var_2573 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return this.var_2573;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         this.var_2577 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return this.var_2577;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         this.var_2574 = param1;
      }
      
      public function get canTrade() : Boolean
      {
         return this.var_2574;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         this.var_2576 = param1;
      }
      
      public function get canTradeReason() : int
      {
         return this.var_2576;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         this.var_2575 = param1;
      }
      
      public function get canBeKicked() : Boolean
      {
         return this.var_2575;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_1984 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_1984;
      }
      
      public function set carryItem(param1:int) : void
      {
         this.var_2572 = param1;
      }
      
      public function get carryItem() : int
      {
         return this.var_2572;
      }
      
      public function set userRoomId(param1:int) : void
      {
         this.var_2570 = param1;
      }
      
      public function get userRoomId() : int
      {
         return this.var_2570;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         this.var_1982 = param1;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return this.var_1982;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1954 = param1;
      }
      
      public function get realName() : String
      {
         return this.var_1954;
      }
      
      public function set allowNameChange(param1:Boolean) : void
      {
         this.var_2256 = param1;
      }
      
      public function get allowNameChange() : Boolean
      {
         return this.var_2256;
      }
   }
}
