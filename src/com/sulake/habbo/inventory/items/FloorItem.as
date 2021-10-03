package com.sulake.habbo.inventory.items
{
   public class FloorItem implements IItem
   {
       
      
      protected var _id:int;
      
      protected var _ref:int;
      
      protected var _category:int;
      
      protected var _type:int;
      
      protected var var_2248:String;
      
      protected var var_1660:Number;
      
      protected var var_3048:Boolean;
      
      protected var var_3047:Boolean;
      
      protected var var_2329:Boolean;
      
      protected var var_2345:Boolean;
      
      protected var var_3057:int;
      
      protected var var_2328:int;
      
      protected var var_2327:int;
      
      protected var var_2330:int;
      
      protected var var_1872:String;
      
      protected var var_1732:int;
      
      protected var var_994:Boolean;
      
      public function FloorItem(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean, param8:Boolean, param9:String, param10:Number, param11:int, param12:int, param13:int, param14:int, param15:String, param16:int)
      {
         super();
         this._id = param1;
         this._type = param2;
         this._ref = param3;
         this._category = param4;
         this.var_2329 = param5;
         this.var_3047 = param6;
         this.var_3048 = param7;
         this.var_2345 = param8;
         this.var_2248 = param9;
         this.var_1660 = param10;
         this.var_3057 = param11;
         this.var_2328 = param12;
         this.var_2327 = param13;
         this.var_2330 = param14;
         this.var_1872 = param15;
         this.var_1732 = param16;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get ref() : int
      {
         return this._ref;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get stuffData() : String
      {
         return this.var_2248;
      }
      
      public function get extra() : Number
      {
         return this.var_1660;
      }
      
      public function get recyclable() : Boolean
      {
         return this.var_3048;
      }
      
      public function get tradeable() : Boolean
      {
         return this.var_3047;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2329;
      }
      
      public function get sellable() : Boolean
      {
         return this.var_2345;
      }
      
      public function get expires() : int
      {
         return this.var_3057;
      }
      
      public function get creationDay() : int
      {
         return this.var_2328;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2327;
      }
      
      public function get creationYear() : int
      {
         return this.var_2330;
      }
      
      public function get slotId() : String
      {
         return this.var_1872;
      }
      
      public function get songId() : int
      {
         return this.var_1732;
      }
      
      public function set locked(param1:Boolean) : void
      {
         this.var_994 = param1;
      }
      
      public function get locked() : Boolean
      {
         return this.var_994;
      }
   }
}
