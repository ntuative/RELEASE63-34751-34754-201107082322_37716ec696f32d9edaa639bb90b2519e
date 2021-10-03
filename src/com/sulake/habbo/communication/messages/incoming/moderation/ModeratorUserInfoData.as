package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var _userId:int;
      
      private var _userName:String;
      
      private var var_2981:int;
      
      private var var_2980:int;
      
      private var var_858:Boolean;
      
      private var var_2978:int;
      
      private var var_2983:int;
      
      private var var_2979:int;
      
      private var var_2982:int;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         this._userId = param1.readInteger();
         this._userName = param1.readString();
         this.var_2981 = param1.readInteger();
         this.var_2980 = param1.readInteger();
         this.var_858 = param1.readBoolean();
         this.var_2978 = param1.readInteger();
         this.var_2983 = param1.readInteger();
         this.var_2979 = param1.readInteger();
         this.var_2982 = param1.readInteger();
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get userName() : String
      {
         return this._userName;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return this.var_2981;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return this.var_2980;
      }
      
      public function get online() : Boolean
      {
         return this.var_858;
      }
      
      public function get cfhCount() : int
      {
         return this.var_2978;
      }
      
      public function get abusiveCfhCount() : int
      {
         return this.var_2983;
      }
      
      public function get cautionCount() : int
      {
         return this.var_2979;
      }
      
      public function get banCount() : int
      {
         return this.var_2982;
      }
   }
}
