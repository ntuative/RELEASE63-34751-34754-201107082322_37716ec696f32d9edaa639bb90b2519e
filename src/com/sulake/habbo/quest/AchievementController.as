package com.sulake.habbo.quest
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.inventory.achievements.AchievementData;
   import com.sulake.habbo.communication.messages.outgoing.inventory.achievements.GetAchievementsComposer;
   import com.sulake.habbo.communication.messages.outgoing.tracking.EventLogMessageComposer;
   import com.sulake.habbo.session.BadgeInfo;
   import com.sulake.habbo.session.events.BadgeImageReadyEvent;
   import flash.display.BitmapData;
   import flash.events.TimerEvent;
   import flash.filters.ColorMatrixFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class AchievementController implements IDisposable, IUpdateReceiver
   {
      
      private static const const_684:int = 3;
      
      private static const const_1446:int = 8;
      
      private static const const_1455:int = 5;
      
      private static const const_1450:int = 6;
      
      private static const const_1448:int = 3;
      
      private static const const_1453:int = 2;
      
      private static const const_1049:int = 6;
      
      private static const const_1445:int = 180;
      
      private static const const_1444:int = 246;
      
      private static const const_1454:int = 45;
      
      private static const const_1451:Point = new Point(115,93);
      
      private static const const_1452:Point = new Point(72,1);
      
      private static const const_1048:int = 40;
      
      private static const const_1447:int = 20;
      
      private static const const_1449:int = 3;
      
      private static const const_1443:int = 10;
       
      
      private var var_51:HabboQuestEngine;
      
      private var _window:IFrameWindow;
      
      private var var_441:IWindowContainer;
      
      private var var_769:IWindowContainer;
      
      private var var_440:IWindowContainer;
      
      private var var_1448:IWindowContainer;
      
      private var var_952:IWindowContainer;
      
      private var var_1168:IWindowContainer;
      
      private var var_118:AchievementCategories;
      
      private var _category:AchievementCategory;
      
      private var var_73:AchievementData;
      
      private var var_518:Timer;
      
      private var var_770:Dictionary;
      
      private var var_617:ProgressBar;
      
      private var var_771:ProgressBar;
      
      private var var_1167:Matrix;
      
      private var var_1734:ColorMatrixFilter;
      
      private var var_1449:AchievementData;
      
      private var var_768:Timer;
      
      private var var_618:Dictionary;
      
      private var var_767:AchievementLevelUp;
      
      public function AchievementController(param1:HabboQuestEngine)
      {
         this.var_770 = new Dictionary();
         this.var_618 = new Dictionary();
         super();
         this.var_51 = param1;
         this.var_518 = new Timer(100,1);
         this.var_518.addEventListener(TimerEvent.TIMER,this.doBadgeRefresh);
         this.var_768 = new Timer(2000,1);
         this.var_768.addEventListener(TimerEvent.TIMER,this.switchIntoPendingLevel);
         this.var_767 = new AchievementLevelUp(this.var_51);
         this.var_1167 = new Matrix();
         this.var_1734 = this.createGrayscaleFilter();
         this.var_618[16] = 1;
         this.var_618[28] = 6;
         this.var_618[38] = 4;
         this.var_618[39] = 3;
         this.var_618[40] = 1;
      }
      
      public static function moveAllChildrenToColumn(param1:IWindowContainer, param2:int, param3:int) : void
      {
         var _loc4_:int = 0;
         var _loc5_:* = null;
         while(_loc4_ < param1.numChildren)
         {
            _loc5_ = param1.getChildAt(_loc4_);
            if(_loc5_ != null && _loc5_.visible && _loc5_.height > 0)
            {
               _loc5_.y = param2;
               param2 += _loc5_.height + param3;
            }
            _loc4_++;
         }
      }
      
      public static function getLowestPoint(param1:IWindowContainer) : int
      {
         var _loc4_:* = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < param1.numChildren)
         {
            _loc4_ = param1.getChildAt(_loc3_);
            if(_loc4_.visible)
            {
               _loc2_ = Math.max(_loc2_,_loc4_.y + _loc4_.height);
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function dispose() : void
      {
         this.var_51 = null;
         this.var_770 = null;
         if(this._window)
         {
            this._window.dispose();
            this._window = null;
         }
         if(this.var_518)
         {
            this.var_518.removeEventListener(TimerEvent.TIMER,this.doBadgeRefresh);
            this.var_518.reset();
            this.var_518 = null;
         }
         if(this.var_768)
         {
            this.var_768.removeEventListener(TimerEvent.TIMER,this.switchIntoPendingLevel);
            this.var_768.reset();
            this.var_768 = null;
         }
         if(this.var_617)
         {
            this.var_617.dispose();
            this.var_617 = null;
         }
         if(this.var_771)
         {
            this.var_771.dispose();
            this.var_771 = null;
         }
         if(this.var_767)
         {
            this.var_767.dispose();
            this.var_767 = null;
         }
         this.var_441 = null;
         this.var_440 = null;
         this.var_440 = null;
         this.var_952 = null;
         this.var_1448 = null;
         this.var_1168 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_51 == null;
      }
      
      public function isVisible() : Boolean
      {
         return this._window && this._window.visible;
      }
      
      public function close() : void
      {
         if(this._window)
         {
            this._window.visible = false;
         }
      }
      
      public function onRoomExit() : void
      {
         this.close();
      }
      
      public function onToolbarClick() : void
      {
         if(this.isVisible())
         {
            this.close();
         }
         else
         {
            this.show();
         }
      }
      
      public function show() : void
      {
         if(this.var_118 == null)
         {
            this.var_51.send(new GetAchievementsComposer());
         }
         else
         {
            this.refresh();
            this._window.visible = true;
            this._window.activate();
         }
      }
      
      public function onAchievements(param1:Array, param2:String) : void
      {
         if(this.var_118 == null)
         {
            this.var_118 = new AchievementCategories(param1);
         }
         this.refresh();
         this._window.visible = true;
         this._window.activate();
         var _loc3_:AchievementCategory = this.var_118.getCategoryByCode(param2);
         if(_loc3_ != null)
         {
            this.pickCategory(_loc3_);
         }
      }
      
      public function onAchievement(param1:AchievementData) : void
      {
         var _loc2_:Boolean = false;
         if(this.var_118 != null)
         {
            _loc2_ = this.var_73 && this.var_73.type == param1.type;
            if(_loc2_ && param1.level > this.var_73.level)
            {
               this.var_73.setMaxProgress();
               this.var_1449 = param1;
               this.var_768.start();
            }
            else
            {
               this.var_118.update(param1);
               if(_loc2_)
               {
                  this.var_73 = param1;
               }
            }
            if(this._window && this._window.visible)
            {
               this.refresh();
            }
         }
      }
      
      private function refresh() : void
      {
         this.prepareWindow();
         this.refreshCategoryList();
         this.refreshCategoryListFooter();
         this.refreshAchievementsHeader();
         this.refreshAchievementsFooter();
         this.refreshAchievementList();
         this.refreshAchievementDetails();
         moveAllChildrenToColumn(this._window.content,0,4);
         this._window.height = getLowestPoint(this._window.content) + const_1454;
      }
      
      private function refreshCategoryList() : void
      {
         var _loc3_:Boolean = false;
         if(this._category != null)
         {
            this.var_441.visible = false;
            return;
         }
         this.var_441.visible = true;
         var _loc1_:Array = this.var_118.categoryList;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ < _loc1_.length)
            {
               this.refreshCategoryEntry(_loc2_,_loc1_[_loc2_]);
            }
            else
            {
               _loc3_ = this.refreshCategoryEntry(_loc2_,null);
               if(_loc3_)
               {
                  break;
               }
            }
            _loc2_++;
         }
         this.var_441.height = getLowestPoint(this.var_441);
      }
      
      private function refreshCategoryListFooter() : void
      {
         if(this._category != null)
         {
            this.var_1168.visible = false;
            return;
         }
         this.var_1168.visible = true;
         this.var_771.refresh(this.var_118.getProgress(),this.var_118.getMaxProgress(),0);
      }
      
      private function refreshAchievementList() : void
      {
         var _loc3_:Boolean = false;
         if(this._category == null)
         {
            this.var_769.visible = false;
            return;
         }
         this.var_769.visible = true;
         Logger.log(this._category.code + " has " + this._category.achievements.length + " achievemenets");
         var _loc1_:Array = this._category.achievements;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ < _loc1_.length)
            {
               this.refreshAchievementEntry(_loc2_,_loc1_[_loc2_]);
            }
            else
            {
               _loc3_ = this.refreshAchievementEntry(_loc2_,null);
               if(_loc3_)
               {
                  break;
               }
            }
            _loc2_++;
         }
         this.var_769.height = getLowestPoint(this.var_769);
      }
      
      private function refreshAchievementsHeader() : void
      {
         if(this._category == null)
         {
            this.var_952.visible = false;
            return;
         }
         this.var_952.visible = true;
         this.var_952.findChildByName("category_name_txt").caption = this.var_51.getAchievementCategoryName(this._category.code);
         this.var_51.localization.registerParameter("achievements.details.categoryprogress","progress","" + this._category.getProgress());
         this.var_51.localization.registerParameter("achievements.details.categoryprogress","limit","" + this._category.getMaxProgress());
         this.var_51.setupAchievementCategoryImage(this.var_952,this._category,false);
      }
      
      private function refreshAchievementsFooter() : void
      {
         if(this._category == null)
         {
            this.var_1448.visible = false;
            return;
         }
         this.var_1448.visible = true;
      }
      
      private function refreshAchievementDetails() : void
      {
         if(this.var_73 == null)
         {
            this.var_440.visible = false;
            return;
         }
         this.var_440.visible = true;
         var _loc1_:String = this.getAchievedBadgeId(this.var_73);
         this.var_440.findChildByName("achievement_name_txt").caption = this.var_51.localization.getBadgeName(_loc1_);
         var _loc2_:String = this.var_51.localization.getBadgeDesc(_loc1_);
         this.var_440.findChildByName("achievement_desc_txt").caption = _loc2_ == null ? "" : _loc2_;
         this.var_51.localization.registerParameter("achievements.details.level","level","" + (!!this.var_73.finalLevel ? this.var_73.level : this.var_73.level - 1));
         this.var_51.localization.registerParameter("achievements.details.level","limit","" + this.var_73.levelCount);
         this.var_51.refreshReward(!this.var_73.finalLevel,this.var_440,this.var_73.levelRewardPointType,this.var_73.levelRewardPoints);
         this.refreshBadgeImageLarge(this.var_440,this.var_73);
         this.var_617.refresh(this.var_73.currentPoints,this.var_73.scoreLimit,this.var_73.type * 10000 + this.var_73.level);
         this.var_617.visible = !this.var_73.finalLevel;
      }
      
      private function prepareWindow() : void
      {
         if(this._window != null)
         {
            return;
         }
         this._window = IFrameWindow(this.var_51.getXmlWindow("Achievements"));
         this._window.findChildByTag("close").procedure = this.onWindowClose;
         this._window.findChildByName("back_button").procedure = this.onBack;
         this._window.center();
         this._window.y = const_1447;
         this.var_441 = IWindowContainer(this._window.findChildByName("categories_cont"));
         this.var_952 = IWindowContainer(this._window.findChildByName("achievements_header_cont"));
         this.var_769 = IWindowContainer(this._window.findChildByName("achievements_cont"));
         this.var_440 = IWindowContainer(this._window.findChildByName("achievement_cont"));
         this.var_1448 = IWindowContainer(this._window.findChildByName("achievements_footer_cont"));
         this.var_1168 = IWindowContainer(this._window.findChildByName("categories_footer_cont"));
         this.var_617 = new ProgressBar(this.var_51,this.var_440,const_1445,"achievements.details.progress",true,const_1451);
         this.var_771 = new ProgressBar(this.var_51,this.var_1168,const_1444,"achievements.categories.totalprogress",true,const_1452);
      }
      
      private function refreshCategoryEntry(param1:int, param2:AchievementCategory) : Boolean
      {
         var _loc3_:IWindowContainer = IWindowContainer(this.var_441.getChildByName("" + param1));
         var _loc4_:int = Math.floor(param1 / const_684);
         var _loc5_:* = _loc4_ < const_1448;
         if(_loc3_ == null)
         {
            if(param2 == null && !_loc5_)
            {
               return true;
            }
            _loc3_ = IWindowContainer(this.var_51.getXmlWindow("AchievementCategory"));
            _loc3_.name = "" + param1;
            this.var_441.addChild(_loc3_);
            new PendingImage(this.var_51,IBitmapWrapperWindow(_loc3_.findChildByName("category_bg_act")),"achievement_bkg_active1");
            new PendingImage(this.var_51,IBitmapWrapperWindow(_loc3_.findChildByName("category_bg_act_hover")),"achievement_bkg_active2");
            new PendingImage(this.var_51,IBitmapWrapperWindow(_loc3_.findChildByName("category_bg_inact")),"achievement_category_bkg_empty_3");
            _loc3_.findChildByName("category_region").procedure = this.onSelectCategory;
            _loc3_.x = (_loc3_.width + const_1446) * (param1 % const_684);
            _loc3_.y = (_loc3_.height + const_1455) * Math.floor(param1 / const_684) + const_1450;
         }
         _loc3_.findChildByName("category_region").id = param1;
         _loc3_.findChildByName("category_region").visible = param2 != null;
         _loc3_.findChildByName("category_bg_inact").visible = param2 == null;
         _loc3_.findChildByName("category_bg_act").visible = param2 != null;
         _loc3_.findChildByName("category_bg_act_hover").visible = false;
         _loc3_.findChildByName("header_txt").visible = param2 != null;
         _loc3_.findChildByName("completion_txt").visible = param2 != null;
         _loc3_.findChildByName("category_pic_bitmap").visible = param2 != null;
         if(param2)
         {
            _loc3_.findChildByName("header_txt").caption = this.var_51.getAchievementCategoryName(param2.code);
            _loc3_.findChildByName("completion_txt").caption = param2.getProgress() + "/" + param2.getMaxProgress();
            this.var_51.setupAchievementCategoryImage(_loc3_,param2,true);
            _loc3_.visible = true;
         }
         else if(_loc5_)
         {
            _loc3_.visible = true;
         }
         else
         {
            _loc3_.visible = false;
         }
         return false;
      }
      
      private function refreshAchievementEntry(param1:int, param2:AchievementData) : Boolean
      {
         var _loc9_:* = null;
         var _loc3_:IWindowContainer = IWindowContainer(this.var_769.getChildByName("" + param1));
         var _loc4_:int = Math.floor(param1 / const_1049);
         var _loc5_:* = _loc4_ < const_1453;
         if(_loc3_ == null)
         {
            if(param2 == null && !_loc5_)
            {
               return true;
            }
            _loc3_ = IWindowContainer(this.var_51.getXmlWindow("Achievement"));
            _loc3_.name = "" + param1;
            this.var_769.addChild(_loc3_);
            _loc9_ = _loc3_.findChildByName("achievement_pic_bitmap") as IBitmapWrapperWindow;
            _loc9_.bitmap = new BitmapData(_loc9_.width,_loc9_.height,true,16777215);
            new PendingImage(this.var_51,_loc3_.findChildByName("bg_selected_bitmap"),"achievement_active");
            new PendingImage(this.var_51,_loc3_.findChildByName("bg_unselected_bitmap"),"achievement_inactive");
            _loc3_.x = _loc3_.width * (param1 % const_1049);
            _loc3_.y = _loc3_.height * _loc4_ + const_1449;
            _loc3_.findChildByName("bg_region").procedure = this.onSelectAchievement;
         }
         var _loc6_:IWindow = _loc3_.findChildByName("bg_region");
         _loc6_.id = param1;
         _loc6_.visible = param2 != null;
         var _loc7_:IWindow = _loc3_.findChildByName("bg_unselected_bitmap");
         var _loc8_:IWindow = _loc3_.findChildByName("bg_selected_bitmap");
         this.refreshBadgeImage(_loc3_,param2);
         if(param2)
         {
            _loc7_.visible = param2 != this.var_73;
            _loc8_.visible = param2 == this.var_73;
            _loc3_.visible = true;
         }
         else if(_loc5_)
         {
            _loc8_.visible = false;
            _loc7_.visible = true;
            _loc3_.visible = true;
         }
         else
         {
            _loc3_.visible = false;
         }
         return false;
      }
      
      private function onWindowClose(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            this.close();
         }
      }
      
      private function onSelectCategory(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:int = param2.id;
         Logger.log("Category index: " + _loc3_);
         if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            this.pickCategory(this.var_118.categoryList[_loc3_]);
         }
         else if(param1.type == WindowMouseEvent.const_25)
         {
            this.refreshMouseOver(-999);
         }
         else if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            this.refreshMouseOver(_loc3_);
         }
      }
      
      private function pickCategory(param1:AchievementCategory) : void
      {
         this._category = param1;
         this.var_73 = this._category.achievements[0];
         Logger.log("Category: " + this._category.code);
         this.refresh();
         this.var_51.send(new EventLogMessageComposer("Achievements",this._category.code,"Category selected"));
      }
      
      private function refreshMouseOver(param1:int) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.var_441.numChildren)
         {
            _loc3_ = _loc2_ == param1;
            _loc4_ = IWindowContainer(this.var_441.getChildAt(_loc2_));
            _loc4_.findChildByName("category_bg_act").visible = !_loc3_ && _loc2_ < this.var_118.categoryList.length;
            _loc4_.findChildByName("category_bg_act_hover").visible = _loc3_;
            _loc5_ = _loc4_.findChildByName("hover_container");
            _loc5_.x = !!_loc3_ ? 0 : 1;
            _loc5_.y = !!_loc3_ ? 0 : 1;
            _loc2_++;
         }
      }
      
      private function onSelectAchievement(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:int = param2.id;
         this.var_73 = this._category.achievements[_loc3_];
         this.refresh();
         this.var_51.send(new EventLogMessageComposer("Achievements","" + this.var_73.type,"Achievement selected"));
      }
      
      private function onBack(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this._category = null;
         this.var_73 = null;
         this.refresh();
      }
      
      private function refreshBadgeImage(param1:IWindowContainer, param2:AchievementData) : void
      {
         var _loc9_:* = null;
         var _loc3_:IBitmapWrapperWindow = param1.findChildByName("achievement_pic_bitmap") as IBitmapWrapperWindow;
         if(param2 == null)
         {
            _loc3_.visible = false;
            return;
         }
         var _loc4_:String = this.getAchievedBadgeId(param2);
         var _loc5_:BitmapData = this.var_770[_loc4_];
         var _loc6_:Boolean = false;
         if(_loc5_ == null)
         {
            _loc9_ = this.var_51.sessionDataManager.getBadgeImageWithInfo(_loc4_);
            _loc5_ = _loc9_.image;
            _loc6_ = _loc9_.placeHolder;
            this.var_770[_loc4_] = _loc5_;
         }
         var _loc7_:int = const_1048 - _loc5_.height + this.getPositionFix(param2.type);
         var _loc8_:Point = new Point((_loc3_.width - _loc5_.width) / 2,!!_loc6_ ? Number(const_1443) : Number(_loc7_));
         _loc3_.bitmap.fillRect(_loc3_.bitmap.rect,16777215);
         if(param2.firstLevelAchieved)
         {
            _loc3_.bitmap.copyPixels(_loc5_,_loc5_.rect,_loc8_,null,null,true);
         }
         else
         {
            _loc3_.bitmap.applyFilter(_loc5_,_loc5_.rect,_loc8_,this.var_1734);
         }
         _loc3_.visible = false;
         _loc3_.visible = true;
      }
      
      private function refreshBadgeImageLarge(param1:IWindowContainer, param2:AchievementData) : void
      {
         var _loc3_:IBitmapWrapperWindow = param1.findChildByName("achievement_pic_bitmap") as IBitmapWrapperWindow;
         var _loc4_:String = this.getAchievedBadgeId(param2);
         var _loc5_:BitmapData = this.var_770[_loc4_];
         if(_loc5_ == null)
         {
            _loc5_ = this.var_51.sessionDataManager.getBadgeImage(_loc4_);
            this.var_770[_loc4_] = _loc5_;
         }
         if(_loc3_.bitmap == null)
         {
            _loc3_.bitmap = new BitmapData(_loc3_.width,_loc3_.height,true,16777215);
         }
         var _loc6_:int = 2 * (const_1048 - _loc5_.height + this.getPositionFix(param2.type));
         this.var_1167.identity();
         this.var_1167.scale(2,2);
         this.var_1167.translate((_loc3_.width - _loc5_.width * 2) / 2,_loc6_);
         _loc3_.bitmap.fillRect(_loc3_.bitmap.rect,16777215);
         _loc3_.bitmap.draw(_loc5_,this.var_1167);
         if(!param2.firstLevelAchieved)
         {
            _loc3_.bitmap.applyFilter(_loc3_.bitmap,_loc3_.bitmap.rect,new Point(0,0),this.var_1734);
         }
         _loc3_.visible = false;
         _loc3_.visible = true;
      }
      
      private function doBadgeRefresh(param1:TimerEvent) : void
      {
         this.var_518.reset();
         this.refresh();
      }
      
      private function switchIntoPendingLevel(param1:TimerEvent) : void
      {
         this.var_73 = this.var_1449;
         this.var_118.update(this.var_1449);
         this.var_1449 = null;
         this.refresh();
      }
      
      public function onBadgeImageReady(param1:BadgeImageReadyEvent) : void
      {
         if(this._window == null)
         {
            return;
         }
         this.var_770[param1.badgeId] = param1.badgeImage;
         if(!this.var_518.running)
         {
            this.var_518.start();
         }
      }
      
      private function createGrayscaleFilter() : ColorMatrixFilter
      {
         var _loc1_:* = 0.3333333333333333;
         var _loc2_:Number = 1 - _loc1_ * 2;
         var _loc3_:Array = [_loc2_,_loc1_,_loc1_,0,0,_loc1_,_loc2_,_loc1_,0,0,_loc1_,_loc1_,_loc2_,0,0,0,0,0,1,0];
         return new ColorMatrixFilter(_loc3_);
      }
      
      public function update(param1:uint) : void
      {
         if(this.var_617 != null)
         {
            this.var_617.updateView();
         }
         if(this.var_771 != null)
         {
            this.var_771.updateView();
         }
         if(this.var_767 != null)
         {
            this.var_767.update(param1);
         }
      }
      
      private function getAchievedBadgeId(param1:AchievementData) : String
      {
         return !!param1.finalLevel ? param1.badgeId : this.var_51.localization.getPreviousLevelBadgeId(param1.badgeId);
      }
      
      private function getPositionFix(param1:int) : int
      {
         return !!this.var_618[param1] ? int(this.var_618[param1]) : 0;
      }
      
      public function get levelUpDialog() : AchievementLevelUp
      {
         return this.var_767;
      }
   }
}
