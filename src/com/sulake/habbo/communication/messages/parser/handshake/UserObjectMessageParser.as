package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var _figure:String;
      
      private var var_1046:String;
      
      private var var_2729:String;
      
      private var var_1954:String;
      
      private var var_2728:int;
      
      private var var_2730:String;
      
      private var var_2727:int;
      
      private var var_2726:int;
      
      private var var_2635:int;
      
      private var var_1185:int;
      
      private var var_780:int;
      
      private var var_2349:int;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this._figure = param1.readString();
         this.var_1046 = param1.readString();
         this.var_2729 = param1.readString();
         this.var_1954 = param1.readString();
         this.var_2728 = param1.readInteger();
         this.var_2730 = param1.readString();
         this.var_2727 = param1.readInteger();
         this.var_2726 = param1.readInteger();
         this.var_2635 = param1.readInteger();
         this.var_1185 = param1.readInteger();
         this.var_780 = param1.readInteger();
         this.var_2349 = param1.readInteger();
         return true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function get sex() : String
      {
         return this.var_1046;
      }
      
      public function get customData() : String
      {
         return this.var_2729;
      }
      
      public function get realName() : String
      {
         return this.var_1954;
      }
      
      public function get tickets() : int
      {
         return this.var_2728;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2730;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2727;
      }
      
      public function get directMail() : int
      {
         return this.var_2726;
      }
      
      public function get respectTotal() : int
      {
         return this.var_2635;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1185;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_780;
      }
      
      public function get identityId() : int
      {
         return this.var_2349;
      }
   }
}
