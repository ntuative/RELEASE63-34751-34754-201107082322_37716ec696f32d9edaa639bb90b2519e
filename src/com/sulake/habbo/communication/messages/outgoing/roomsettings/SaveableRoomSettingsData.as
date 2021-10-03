package com.sulake.habbo.communication.messages.outgoing.roomsettings
{
   public class SaveableRoomSettingsData
   {
       
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var var_1720:String;
      
      private var var_2282:int;
      
      private var _password:String;
      
      private var var_1537:int;
      
      private var var_2288:int;
      
      private var var_939:Array;
      
      private var var_2285:Array;
      
      private var var_2283:Boolean;
      
      private var var_2289:Boolean;
      
      private var var_2286:Boolean;
      
      private var var_2287:Boolean;
      
      private var var_2290:int;
      
      private var var_2284:int;
      
      public function SaveableRoomSettingsData()
      {
         super();
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2283;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         this.var_2283 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return this.var_2289;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         this.var_2289 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return this.var_2286;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         this.var_2286 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return this.var_2287;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         this.var_2287 = param1;
      }
      
      public function get wallThickness() : int
      {
         return this.var_2290;
      }
      
      public function set wallThickness(param1:int) : void
      {
         this.var_2290 = param1;
      }
      
      public function get floorThickness() : int
      {
         return this.var_2284;
      }
      
      public function set floorThickness(param1:int) : void
      {
         this.var_2284 = param1;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function set roomId(param1:int) : void
      {
         this._roomId = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.var_1720;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1720 = param1;
      }
      
      public function get doorMode() : int
      {
         return this.var_2282;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_2282 = param1;
      }
      
      public function get password() : String
      {
         return this._password;
      }
      
      public function set password(param1:String) : void
      {
         this._password = param1;
      }
      
      public function get categoryId() : int
      {
         return this.var_1537;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1537 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return this.var_2288;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         this.var_2288 = param1;
      }
      
      public function get tags() : Array
      {
         return this.var_939;
      }
      
      public function set tags(param1:Array) : void
      {
         this.var_939 = param1;
      }
      
      public function get controllers() : Array
      {
         return this.var_2285;
      }
      
      public function set controllers(param1:Array) : void
      {
         this.var_2285 = param1;
      }
   }
}
