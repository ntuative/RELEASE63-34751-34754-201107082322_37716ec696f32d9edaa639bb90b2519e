package com.sulake.habbo.quest
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestMessageData;
   
   public class QuestController implements IDisposable, IUpdateReceiver
   {
       
      
      private var var_51:HabboQuestEngine;
      
      private var var_530:QuestsList;
      
      private var var_446:QuestDetails;
      
      private var _questCompleted:QuestCompleted;
      
      private var var_372:QuestTracker;
      
      private var var_628:NextQuestTimer;
      
      public function QuestController(param1:HabboQuestEngine)
      {
         super();
         this.var_51 = param1;
         this.var_372 = new QuestTracker(this.var_51);
         this.var_530 = new QuestsList(this.var_51);
         this.var_446 = new QuestDetails(this.var_51);
         this._questCompleted = new QuestCompleted(this.var_51);
         this.var_628 = new NextQuestTimer(this.var_51);
      }
      
      public function onToolbarClick() : void
      {
         this.var_530.onToolbarClick();
      }
      
      public function onQuests(param1:Array, param2:Boolean) : void
      {
         this.var_530.onQuests(param1,param2);
      }
      
      public function onQuest(param1:QuestMessageData) : void
      {
         this.var_372.onQuest(param1);
         this.var_446.onQuest(param1);
         this._questCompleted.onQuest(param1);
         this.var_628.onQuest(param1);
      }
      
      public function onQuestCompleted(param1:QuestMessageData) : void
      {
         this.var_372.onQuestCompleted(param1);
         this.var_446.onQuestCompleted(param1);
         this._questCompleted.onQuestCompleted(param1);
      }
      
      public function onQuestCancelled() : void
      {
         this.var_372.onQuestCancelled();
         this.var_446.onQuestCancelled();
         this._questCompleted.onQuestCancelled();
         this.var_628.onQuestCancelled();
      }
      
      public function onRoomEnter() : void
      {
         this.var_372.onRoomEnter();
      }
      
      public function onRoomExit() : void
      {
         this.var_530.onRoomExit();
         this.var_372.onRoomExit();
         this.var_446.onRoomExit();
         this.var_628.onRoomExit();
      }
      
      public function update(param1:uint) : void
      {
         this._questCompleted.update(param1);
         this.var_372.update(param1);
         this.var_628.update(param1);
         this.var_530.update(param1);
         this.var_446.update(param1);
      }
      
      public function dispose() : void
      {
         this.var_51 = null;
         if(this.var_530)
         {
            this.var_530.dispose();
            this.var_530 = null;
         }
         if(this.var_372)
         {
            this.var_372.dispose();
            this.var_372 = null;
         }
         if(this.var_446)
         {
            this.var_446.dispose();
            this.var_446 = null;
         }
         if(this._questCompleted)
         {
            this._questCompleted.dispose();
            this._questCompleted = null;
         }
         if(this.var_628)
         {
            this.var_628.dispose();
            this.var_628 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this.var_51 == null;
      }
      
      public function get questsList() : QuestsList
      {
         return this.var_530;
      }
      
      public function get questDetails() : QuestDetails
      {
         return this.var_446;
      }
      
      public function get questTracker() : QuestTracker
      {
         return this.var_372;
      }
   }
}
