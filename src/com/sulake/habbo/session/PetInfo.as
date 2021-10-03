package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1850:int;
      
      private var var_1189:int;
      
      private var var_2372:int;
      
      private var var_2378:int;
      
      private var var_2374:int;
      
      private var _energy:int;
      
      private var var_2379:int;
      
      private var _nutrition:int;
      
      private var var_2377:int;
      
      private var var_2376:int;
      
      private var _ownerName:String;
      
      private var var_2466:int;
      
      private var var_568:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1850;
      }
      
      public function get level() : int
      {
         return this.var_1189;
      }
      
      public function get levelMax() : int
      {
         return this.var_2372;
      }
      
      public function get experience() : int
      {
         return this.var_2378;
      }
      
      public function get experienceMax() : int
      {
         return this.var_2374;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get energyMax() : int
      {
         return this.var_2379;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get nutritionMax() : int
      {
         return this.var_2377;
      }
      
      public function get ownerId() : int
      {
         return this.var_2376;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get respect() : int
      {
         return this.var_2466;
      }
      
      public function get age() : int
      {
         return this.var_568;
      }
      
      public function set petId(param1:int) : void
      {
         this.var_1850 = param1;
      }
      
      public function set level(param1:int) : void
      {
         this.var_1189 = param1;
      }
      
      public function set levelMax(param1:int) : void
      {
         this.var_2372 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         this.var_2378 = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         this.var_2374 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         this._energy = param1;
      }
      
      public function set energyMax(param1:int) : void
      {
         this.var_2379 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         this._nutrition = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         this.var_2377 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         this.var_2376 = param1;
      }
      
      public function set ownerName(param1:String) : void
      {
         this._ownerName = param1;
      }
      
      public function set respect(param1:int) : void
      {
         this.var_2466 = param1;
      }
      
      public function set age(param1:int) : void
      {
         this.var_568 = param1;
      }
   }
}
