package com.sulake.habbo.communication.messages.incoming.quest
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class QuestMessageData
   {
       
      
      private var var_1940:String;
      
      private var var_1939:int;
      
      private var var_1938:int;
      
      private var var_2040:int;
      
      private var _id:int;
      
      private var var_1937:Boolean;
      
      private var _type:String;
      
      private var var_2653:String;
      
      private var var_2652:int;
      
      private var var_1941:String;
      
      private var var_2655:int;
      
      private var var_2654:int;
      
      private var var_1559:int;
      
      private var var_1936:Date;
      
      public function QuestMessageData(param1:IMessageDataWrapper)
      {
         this.var_1936 = new Date();
         super();
         this.var_1940 = param1.readString();
         this.var_1939 = param1.readInteger();
         this.var_1938 = param1.readInteger();
         this.var_2040 = param1.readInteger();
         this._id = param1.readInteger();
         this.var_1937 = param1.readBoolean();
         this._type = param1.readString();
         this.var_2653 = param1.readString();
         this.var_2652 = param1.readInteger();
         this.var_1941 = param1.readString();
         this.var_2655 = param1.readInteger();
         this.var_2654 = param1.readInteger();
         this.var_1559 = param1.readInteger();
      }
      
      public function get campaignCode() : String
      {
         return this.var_1940;
      }
      
      public function get localizationCode() : String
      {
         return this.var_1941;
      }
      
      public function get completedQuestsInCampaign() : int
      {
         return this.var_1939;
      }
      
      public function get questCountInCampaign() : int
      {
         return this.var_1938;
      }
      
      public function get activityPointType() : int
      {
         return this.var_2040;
      }
      
      public function get accepted() : Boolean
      {
         return this.var_1937;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get imageVersion() : String
      {
         return this.var_2653;
      }
      
      public function get rewardCurrencyAmount() : int
      {
         return this.var_2652;
      }
      
      public function get completedSteps() : int
      {
         return this.var_2655;
      }
      
      public function get totalSteps() : int
      {
         return this.var_2654;
      }
      
      public function get waitPeriodSeconds() : int
      {
         if(this.var_1559 < 1)
         {
            return 0;
         }
         var _loc1_:Date = new Date();
         var _loc2_:int = _loc1_.getTime() - this.var_1936.getTime();
         return int(Math.max(0,this.var_1559 - Math.floor(_loc2_ / 1000)));
      }
      
      public function getCampaignLocalizationKey() : String
      {
         return "quests." + this.var_1940;
      }
      
      public function getQuestLocalizationKey() : String
      {
         return this.getCampaignLocalizationKey() + "." + this.var_1941;
      }
      
      public function get completedCampaign() : Boolean
      {
         return this._id < 1;
      }
      
      public function set id(param1:int) : void
      {
         this._id = param1;
      }
      
      public function set accepted(param1:Boolean) : void
      {
         this.var_1937 = param1;
      }
      
      public function get lastQuestInCampaign() : Boolean
      {
         return this.var_1939 >= this.var_1938;
      }
      
      public function get receiveTime() : Date
      {
         return this.var_1936;
      }
      
      public function set waitPeriodSeconds(param1:int) : void
      {
         this.var_1559 = param1;
      }
   }
}
