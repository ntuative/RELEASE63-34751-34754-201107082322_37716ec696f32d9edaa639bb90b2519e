package com.sulake.habbo.avatar.structure.parts
{
   public class PartDefinition
   {
       
      
      private var var_2801:String;
      
      private var var_2014:String;
      
      private var var_2802:String;
      
      private var var_2013:Boolean;
      
      private var var_2015:int = -1;
      
      public function PartDefinition(param1:XML)
      {
         super();
         this.var_2801 = String(param1["set-type"]);
         this.var_2014 = String(param1["flipped-set-type"]);
         this.var_2802 = String(param1["remove-set-type"]);
         this.var_2013 = false;
      }
      
      public function hasStaticId() : Boolean
      {
         return this.var_2015 >= 0;
      }
      
      public function get staticId() : int
      {
         return this.var_2015;
      }
      
      public function set staticId(param1:int) : void
      {
         this.var_2015 = param1;
      }
      
      public function get setType() : String
      {
         return this.var_2801;
      }
      
      public function get flippedSetType() : String
      {
         return this.var_2014;
      }
      
      public function get removeSetType() : String
      {
         return this.var_2802;
      }
      
      public function get appendToFigure() : Boolean
      {
         return this.var_2013;
      }
      
      public function set appendToFigure(param1:Boolean) : void
      {
         this.var_2013 = param1;
      }
      
      public function set flippedSetType(param1:String) : void
      {
         this.var_2014 = param1;
      }
   }
}
