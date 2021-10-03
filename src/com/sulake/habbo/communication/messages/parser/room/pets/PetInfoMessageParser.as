package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1850:int;
      
      private var _name:String;
      
      private var var_1189:int;
      
      private var var_2469:int;
      
      private var var_2378:int;
      
      private var _energy:int;
      
      private var _nutrition:int;
      
      private var _figure:String;
      
      private var var_2471:int;
      
      private var var_2470:int;
      
      private var var_2468:int;
      
      private var var_2466:int;
      
      private var var_2376:int;
      
      private var _ownerName:String;
      
      private var var_568:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1850;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get level() : int
      {
         return this.var_1189;
      }
      
      public function get maxLevel() : int
      {
         return this.var_2469;
      }
      
      public function get experience() : int
      {
         return this.var_2378;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return this.var_2471;
      }
      
      public function get maxEnergy() : int
      {
         return this.var_2470;
      }
      
      public function get maxNutrition() : int
      {
         return this.var_2468;
      }
      
      public function get respect() : int
      {
         return this.var_2466;
      }
      
      public function get ownerId() : int
      {
         return this.var_2376;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get age() : int
      {
         return this.var_568;
      }
      
      public function flush() : Boolean
      {
         this.var_1850 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1850 = param1.readInteger();
         this._name = param1.readString();
         this.var_1189 = param1.readInteger();
         this.var_2469 = param1.readInteger();
         this.var_2378 = param1.readInteger();
         this.var_2471 = param1.readInteger();
         this._energy = param1.readInteger();
         this.var_2470 = param1.readInteger();
         this._nutrition = param1.readInteger();
         this.var_2468 = param1.readInteger();
         this._figure = param1.readString();
         this.var_2466 = param1.readInteger();
         this.var_2376 = param1.readInteger();
         this.var_568 = param1.readInteger();
         this._ownerName = param1.readString();
         return true;
      }
   }
}
