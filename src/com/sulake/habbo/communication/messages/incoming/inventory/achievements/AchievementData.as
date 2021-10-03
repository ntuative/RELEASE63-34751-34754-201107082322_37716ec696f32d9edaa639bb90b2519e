package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1189:int;
      
      private var var_1951:String;
      
      private var var_1875:int;
      
      private var var_2526:int;
      
      private var var_2525:int;
      
      private var var_1874:int;
      
      private var var_1876:Boolean;
      
      private var _category:String;
      
      private var var_2524:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1189 = param1.readInteger();
         this.var_1951 = param1.readString();
         this.var_1875 = Math.max(1,param1.readInteger());
         this.var_2526 = param1.readInteger();
         this.var_2525 = param1.readInteger();
         this.var_1874 = param1.readInteger();
         this.var_1876 = param1.readBoolean();
         this._category = param1.readString();
         this.var_2524 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_1951;
      }
      
      public function get level() : int
      {
         return this.var_1189;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_1875;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2526;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_2525;
      }
      
      public function get currentPoints() : int
      {
         return this.var_1874;
      }
      
      public function get finalLevel() : Boolean
      {
         return this.var_1876;
      }
      
      public function get category() : String
      {
         return this._category;
      }
      
      public function get levelCount() : int
      {
         return this.var_2524;
      }
      
      public function get firstLevelAchieved() : Boolean
      {
         return this.var_1189 > 1 || this.var_1876;
      }
      
      public function setMaxProgress() : void
      {
         this.var_1874 = this.var_1875;
      }
   }
}
