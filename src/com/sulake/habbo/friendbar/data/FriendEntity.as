package com.sulake.habbo.friendbar.data
{
   public class FriendEntity implements IFriendEntity
   {
      
      private static var var_1276:int = 0;
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_997:int;
      
      private var var_858:Boolean;
      
      private var _allowFollow:Boolean;
      
      private var _figure:String;
      
      private var var_1537:int;
      
      private var var_1953:String;
      
      private var var_1955:String;
      
      private var var_1954:String;
      
      private var var_1012:Vector.<FriendNotification>;
      
      private var var_2671:int = -1;
      
      public function FriendEntity(param1:int, param2:String, param3:String, param4:String, param5:int, param6:Boolean, param7:Boolean, param8:String, param9:int, param10:String)
      {
         super();
         this._id = param1;
         this._name = param2;
         this.var_1954 = param3;
         this.var_1953 = param4;
         this.var_997 = param5;
         this.var_858 = param6;
         this._allowFollow = param7;
         this._figure = param8;
         this.var_1537 = param9;
         this.var_1955 = param10;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this.var_997;
      }
      
      public function get online() : Boolean
      {
         return this.var_858;
      }
      
      public function get allowFollow() : Boolean
      {
         return this._allowFollow;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function get categoryId() : int
      {
         return this.var_1537;
      }
      
      public function get motto() : String
      {
         return this.var_1953;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1955;
      }
      
      public function get realName() : String
      {
         return this.var_1954;
      }
      
      public function get logEventId() : int
      {
         return this.var_2671;
      }
      
      public function get notifications() : Vector.<FriendNotification>
      {
         if(!this.var_1012)
         {
            this.var_1012 = new Vector.<FriendNotification>();
         }
         return this.var_1012;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function set gender(param1:int) : void
      {
         this.var_997 = param1;
      }
      
      public function set online(param1:Boolean) : void
      {
         this.var_858 = param1;
      }
      
      public function set allowFollow(param1:Boolean) : void
      {
         this._allowFollow = param1;
      }
      
      public function set figure(param1:String) : void
      {
         this._figure = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1537 = param1;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1953 = param1;
      }
      
      public function set lastAccess(param1:String) : void
      {
         this.var_1955 = param1;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1954 = param1;
      }
      
      public function set logEventId(param1:int) : void
      {
         this.var_2671 = param1;
      }
      
      public function getNextLogEventId() : int
      {
         return ++var_1276;
      }
   }
}
