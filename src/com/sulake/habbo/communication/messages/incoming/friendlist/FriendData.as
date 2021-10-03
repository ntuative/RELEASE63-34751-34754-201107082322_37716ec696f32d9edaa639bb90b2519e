package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_997:int;
      
      private var var_858:Boolean;
      
      private var var_1847:Boolean;
      
      private var _figure:String;
      
      private var var_1537:int;
      
      private var var_1953:String;
      
      private var var_1955:String;
      
      private var var_1954:String;
      
      private var var_2292:String;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_997 = param1.readInteger();
         this.var_858 = param1.readBoolean();
         this.var_1847 = param1.readBoolean();
         this._figure = param1.readString();
         this.var_1537 = param1.readInteger();
         this.var_1953 = param1.readString();
         this.var_1955 = param1.readString();
         this.var_1954 = param1.readString();
         this.var_2292 = param1.readString();
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
      
      public function get followingAllowed() : Boolean
      {
         return this.var_1847;
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
      
      public function get facebookId() : String
      {
         return this.var_2292;
      }
   }
}
