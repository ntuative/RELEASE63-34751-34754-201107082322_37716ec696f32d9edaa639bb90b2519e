package com.sulake.habbo.quest
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.notifications.AchievementLevelUpData;
   import com.sulake.habbo.communication.messages.outgoing.tracking.EventLogMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.users.GetAchievementShareIdComposer;
   import com.sulake.habbo.utils.HabboWebTools;
   import flash.display.BitmapData;
   import flash.filters.ColorMatrixFilter;
   import flash.geom.Point;
   
   public class AchievementLevelUp implements IDisposable
   {
      
      private static const const_1087:int = 2000;
      
      private static const const_1559:int = 500;
      
      private static const const_1560:int = 500;
      
      private static const const_2082:int = 300;
      
      private static const const_1558:int = 1400;
      
      private static const const_1561:Number = 1;
      
      private static const const_1562:int = 3;
      
      private static const const_1089:int = 0;
      
      private static const const_1088:int = 1;
      
      private static const const_704:int = 2;
      
      private static const const_1090:int = 3;
       
      
      private var _window:IFrameWindow;
      
      private var var_51:HabboQuestEngine;
      
      private var var_70:AchievementLevelUpData;
      
      private var var_840:Array;
      
      private var var_839:int;
      
      private var var_1935:int = 0;
      
      private var var_1933:int;
      
      private var var_558:int;
      
      private var var_1556:int;
      
      private var var_1557:int = 3;
      
      private var var_841:BitmapData;
      
      private var var_2638:Point;
      
      private var var_559:Array;
      
      private var var_1934:ColorMatrixFilter;
      
      private var var_670:Animation;
      
      public function AchievementLevelUp(param1:HabboQuestEngine)
      {
         this.var_840 = new Array();
         this.var_559 = [1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0];
         this.var_1934 = new ColorMatrixFilter(this.var_559);
         super();
         this.var_51 = param1;
      }
      
      public function dispose() : void
      {
         this.var_51 = null;
         this.var_840 = null;
         this.var_70 = null;
         if(this._window)
         {
            this._window.dispose();
            this._window = null;
         }
         if(this.var_670)
         {
            this.var_670.dispose();
            this.var_670 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._window == null;
      }
      
      public function onLevelUp(param1:AchievementLevelUpData) : void
      {
         this.var_840.push(param1);
         this.var_51.sessionDataManager.getBadgeImage(param1.badgeCode);
         this.var_51.sessionDataManager.getBadgeImage(this.var_51.localization.getPreviousLevelBadgeId(param1.badgeCode));
         if(this._window == null || !this._window.visible)
         {
            this.var_839 = const_1087;
         }
         this.prepare();
      }
      
      private function close() : void
      {
         if(this._window)
         {
            this._window.visible = false;
            if(this.var_840.length > 0)
            {
               this.var_839 = const_1559;
            }
         }
      }
      
      private function prepare() : void
      {
         if(this._window != null)
         {
            return;
         }
         this._window = IFrameWindow(this.var_51.getXmlWindow("AchievementLevelUp"));
         this._window.findChildByTag("close").procedure = this.onCloseLink;
         this._window.findChildByName("ok_button").procedure = this.method_8;
         this._window.findChildByName("share_button").procedure = this.onShareButton;
         new PendingImage(this.var_51,this._window.findChildByName("reward_icon"),"ach_receive_star");
         this._window.findChildByName("achievements_link_region").procedure = this.onAchievementsLink;
         this._window.findChildByName("close_link_region").procedure = this.onCloseLink;
         this.var_670 = this.var_51.getTwinkleAnimation(this._window);
         this._window.visible = false;
      }
      
      private function show() : void
      {
         this.prepare();
         this.registerParameter("achievements.levelup.title","category",this.var_51.getAchievementCategoryName(this.var_70.category));
         this.registerParameter("achievements.levelup.reward","amount","" + this.var_70.levelRewardPoints);
         this.registerParameter("achievements.levelup.reward","currency_name",this.var_51.getActivityPointName(this.var_70.levelRewardPointType));
         this.registerParameter("achievements.levelup.score","amount","" + this.var_70.points);
         this.registerParameter("achievements.levelup.sharedesc","amount","" + this.var_70.bonusPoints);
         this._window.findChildByName("achievement_name_txt").caption = "\'" + this.var_51.localization.getBadgeName(this.var_70.badgeCode) + "\'";
         var _loc1_:Boolean = this.isFacebookPostingEnabled();
         this._window.findChildByName("achievements_link_region").visible = !_loc1_;
         this._window.findChildByName("close_link_region").visible = _loc1_;
         this._window.findChildByName("ok_button").visible = !_loc1_;
         this._window.findChildByName("share_button").visible = _loc1_;
         this._window.findChildByName("facebook_info_txt").visible = _loc1_;
         this.doFacebookLogging();
         if(this.var_70.level > 1)
         {
            this.setFadeStatus(const_1088);
         }
         else
         {
            this.setFadeStatus(const_704,const_1558);
         }
         this.var_670.restart();
      }
      
      private function setFadeStatus(param1:int, param2:int = 300) : void
      {
         this.var_841 = null;
         this.var_1935 = param1;
         this.var_558 = param2;
         this.var_1933 = param2;
         this.var_1556 = const_1560;
      }
      
      private function isFacebookPostingEnabled() : Boolean
      {
         return this.var_70.bonusPoints > 0 && this.isPostingEnabled() && this.var_51.configuration.keyExists("facebook.user");
      }
      
      private function isPostingEnabled() : Boolean
      {
         return this.var_51.configuration.getKey("achievement.post.enabled","1") != "0";
      }
      
      private function doFacebookLogging() : void
      {
         var _loc1_:Boolean = this.var_51.configuration.keyExists("facebook.user");
         var _loc2_:String = this.var_70.badgeCode;
         if(this.var_70.bonusPoints <= 0 || !this.isPostingEnabled())
         {
            this.var_51.send(new EventLogMessageComposer("Achievements",_loc2_,"client.show.no_post"));
         }
         else if(_loc1_)
         {
            this.var_51.send(new EventLogMessageComposer("Achievements",_loc2_,"client.show.post"));
         }
         else
         {
            this.var_51.send(new EventLogMessageComposer("Achievements",_loc2_,"client.show.no_fb"));
         }
      }
      
      private function method_8(param1:WindowEvent, param2:IWindow = null) : void
      {
         if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            this.close();
         }
      }
      
      private function onCloseLink(param1:WindowEvent, param2:IWindow = null) : void
      {
         if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            this.close();
         }
      }
      
      private function onAchievementsLink(param1:WindowEvent, param2:IWindow = null) : void
      {
         if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            this.var_51.achievementController.show();
            this.close();
         }
      }
      
      private function onShareButton(param1:WindowEvent, param2:IWindow = null) : void
      {
         if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            this.var_51.send(new GetAchievementShareIdComposer(this.var_70.achievementID));
            this.var_51.send(new EventLogMessageComposer("Achievements",this.var_70.badgeCode,"client.start_post"));
         }
      }
      
      public function update(param1:uint) : void
      {
         if(this.var_839 > 0)
         {
            this.checkDialogOpen(param1);
            return;
         }
         if(this.var_670 != null)
         {
            this.var_670.update(param1);
         }
         if(this._window == null || this.var_1935 == const_1089)
         {
            return;
         }
         switch(this.var_1935)
         {
            case const_1088:
               this.var_1556 -= param1;
               this.animateBadgeImage(true);
               if(this.var_1556 < 0)
               {
                  this.setFadeStatus(const_1090);
               }
               break;
            case const_1090:
               this.var_558 -= param1;
               this.animateBadgeImage(true);
               if(this.var_558 < 0)
               {
                  this.setFadeStatus(const_704);
               }
               break;
            case const_704:
               this.var_558 -= param1;
               this.animateBadgeImage(false);
               if(this.var_558 < 0)
               {
                  this.setFadeStatus(const_1089);
               }
         }
      }
      
      private function checkDialogOpen(param1:uint) : void
      {
         this.var_839 -= param1;
         if(this.var_839 > 0)
         {
            return;
         }
         if(this.var_840.length < 1)
         {
            return;
         }
         var _loc2_:AchievementLevelUpData = this.var_840.pop();
         if(this.var_51.sessionDataManager.getBadgeImageWithInfo(_loc2_.badgeCode).placeHolder || this.var_51.sessionDataManager.getBadgeImageWithInfo(this.var_51.localization.getPreviousLevelBadgeId(_loc2_.badgeCode)).placeHolder)
         {
            if(this.var_1557 > 0)
            {
               this.var_840.push(_loc2_);
               this.var_839 = const_1087;
               --this.var_1557;
               return;
            }
            this.var_1557 = const_1562;
         }
         this.var_70 = _loc2_;
         this.show();
         this._window.center();
         this._window.visible = true;
         this._window.activate();
      }
      
      public function requestFacebookPostDialog(param1:String, param2:String) : void
      {
         if(this._window == null || this.var_70 == null || this.var_70.badgeCode != param1)
         {
            Logger.log("Invalid facebook post: " + param1 + ", " + (this.var_70 == null ? "current is null" : this.var_70.badgeCode));
            return;
         }
         var _loc3_:String = this.getFacebookText("notifications.text.achievement_facebook");
         var _loc4_:String = this.getFacebookText("notifications.text.achievement_facebook_title");
         HabboWebTools.facebookAchievementPost(this.var_70.badgeCode,_loc4_,_loc3_,param2);
         this.close();
      }
      
      private function getFacebookText(param1:String) : String
      {
         var _loc2_:String = this.var_51.sessionDataManager.userName;
         var _loc3_:String = this.var_51.sessionDataManager.realName;
         var _loc4_:String = this.var_51.localization.getAchievementNameForFacebook(this.var_70.badgeCode,_loc2_,_loc3_,this.var_70.level);
         var _loc5_:String = this.var_51.localization.getAchievementDescForFacebook(this.var_70.badgeCode,_loc2_,_loc3_,this.var_70.level);
         this.registerParameter(param1,"badge_name",this.var_51.localization.getBadgeName(this.var_70.badgeCode));
         this.registerParameter(param1,"badge_desc",this.var_51.localization.getBadgeDesc(this.var_70.badgeCode));
         this.registerParameter(param1,"badge_name_fb",_loc4_);
         this.registerParameter(param1,"badge_desc_fb",_loc5_);
         this.registerParameter(param1,"level",this.var_70.level.toString());
         this.registerParameter(param1,"name",_loc2_);
         this.registerParameter(param1,"realname",_loc3_);
         return this.var_51.localization.getKey(param1,param1);
      }
      
      private function registerParameter(param1:String, param2:String, param3:String) : void
      {
         this.var_51.localization.registerParameter(param1,param2,param3);
      }
      
      private function animateBadgeImage(param1:Boolean) : void
      {
         this.changeBadgeColorFilter(param1);
         var _loc2_:IBitmapWrapperWindow = IBitmapWrapperWindow(this._window.findChildByName("achievement_pic_bitmap"));
         if(_loc2_.bitmap == null)
         {
            _loc2_.bitmap = new BitmapData(_loc2_.width,_loc2_.height,true,0);
         }
         if(this.var_841 == null)
         {
            this.var_841 = !!param1 ? this.var_51.sessionDataManager.getBadgeImage(this.var_51.localization.getPreviousLevelBadgeId(this.var_70.badgeCode)) : this.var_51.sessionDataManager.getBadgeImage(this.var_70.badgeCode);
            this.var_2638 = new Point((_loc2_.width - this.var_841.width) / 2,(_loc2_.height - this.var_841.height) / 2);
         }
         _loc2_.bitmap.fillRect(_loc2_.bitmap.rect,0);
         _loc2_.bitmap.applyFilter(this.var_841,this.var_841.rect,this.var_2638,this.var_1934);
         _loc2_.invalidate(_loc2_.rectangle);
      }
      
      private function changeBadgeColorFilter(param1:Boolean) : void
      {
         var _loc2_:int = Math.max(0,!param1 ? Number(this.var_558) : Number(this.var_1933 - this.var_558));
         var _loc3_:Number = _loc2_ / this.var_1933 * const_1561;
         this.var_559[3] = _loc3_;
         this.var_559[8] = _loc3_;
         this.var_559[13] = _loc3_;
         this.var_559[0] = 1 - _loc3_;
         this.var_559[6] = 1 - _loc3_;
         this.var_559[12] = 1 - _loc3_;
         this.var_1934.matrix = this.var_559;
      }
   }
}
