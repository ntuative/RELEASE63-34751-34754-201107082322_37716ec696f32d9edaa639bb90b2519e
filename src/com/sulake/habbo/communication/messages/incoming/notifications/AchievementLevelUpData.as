package com.sulake.habbo.communication.messages.incoming.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementLevelUpData
   {
       
      
      private var _type:int;
      
      private var var_1189:int;
      
      private var var_2164:int;
      
      private var var_2526:int;
      
      private var var_2525:int;
      
      private var var_2656:int;
      
      private var var_1951:int;
      
      private var var_2779:String = "";
      
      private var var_2780:String = "";
      
      private var var_2781:int;
      
      private var _category:String;
      
      public function AchievementLevelUpData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1189 = param1.readInteger();
         this.var_1951 = param1.readInteger();
         this.var_2779 = param1.readString();
         this.var_2164 = param1.readInteger();
         this.var_2526 = param1.readInteger();
         this.var_2525 = param1.readInteger();
         this.var_2656 = param1.readInteger();
         this.var_2781 = param1.readInteger();
         this.var_2780 = param1.readString();
         this._category = param1.readString();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1189;
      }
      
      public function get points() : int
      {
         return this.var_2164;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2526;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_2525;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_2656;
      }
      
      public function get badgeId() : int
      {
         return this.var_1951;
      }
      
      public function get badgeCode() : String
      {
         return this.var_2779;
      }
      
      public function get removedBadgeCode() : String
      {
         return this.var_2780;
      }
      
      public function get achievementID() : int
      {
         return this.var_2781;
      }
      
      public function get category() : String
      {
         return this._category;
      }
   }
}
