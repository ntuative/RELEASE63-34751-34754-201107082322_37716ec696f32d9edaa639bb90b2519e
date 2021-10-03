package com.sulake.habbo.catalog.viewer.widgets
{
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.catalog.HabboCatalog;
   import com.sulake.habbo.catalog.viewer.IProduct;
   import com.sulake.habbo.catalog.viewer.Offer;
   import com.sulake.habbo.catalog.viewer.widgets.events.CatalogWidgetUpdateRoomPreviewEvent;
   import flash.utils.Dictionary;
   
   public class SpacesCatalogWidget extends CatalogWidget implements ICatalogWidget
   {
      
      private static const const_108:String = "floor";
      
      private static const const_243:String = "wallpaper";
      
      private static const TYPE_LANDSCAPE:String = "landscape";
       
      
      private var var_1405:Array;
      
      private var var_744:Array;
      
      private var var_497:int = 0;
      
      private var var_498:int = 0;
      
      private var var_1138:int = 0;
      
      private var _floorType:String = "default";
      
      private var var_1404:Array;
      
      private var var_922:Array;
      
      private var var_499:int = 0;
      
      private var var_500:int = 0;
      
      private var var_1135:int = 0;
      
      private var var_1695:String = "default";
      
      private var _landscapeOffers:Array;
      
      private var var_923:Array;
      
      private var var_496:int = 0;
      
      private var var_501:int = 0;
      
      private var var_1137:int = 0;
      
      private var var_1696:String = "1.1";
      
      private var var_1136:Dictionary;
      
      private var var_1403:Dictionary;
      
      private var var_1406:Dictionary;
      
      public function SpacesCatalogWidget(param1:IWindowContainer)
      {
         this.var_1405 = [];
         this.var_744 = [];
         this.var_1404 = [];
         this.var_922 = [];
         this._landscapeOffers = [];
         this.var_923 = [];
         super(param1);
      }
      
      override public function dispose() : void
      {
         this.var_1136 = null;
         this.var_1403 = null;
         this.var_1406 = null;
         this.var_1405 = null;
         this.var_744 = null;
         this.var_1404 = null;
         this.var_922 = null;
         this._landscapeOffers = null;
         this.var_923 = null;
         super.dispose();
      }
      
      override public function init() : Boolean
      {
         var _loc3_:* = null;
         var _loc4_:int = 0;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         var _loc12_:* = null;
         if(!super.init())
         {
            return false;
         }
         if(window == null)
         {
            return false;
         }
         var _loc1_:XmlAsset = page.viewer.catalog.assets.getAssetByName("configuration_catalog_spaces") as XmlAsset;
         if(_loc1_ == null)
         {
            return false;
         }
         var _loc2_:XML = _loc1_.content as XML;
         if(_loc2_ == null)
         {
            return false;
         }
         this.var_1136 = this.parseElements(_loc2_.floors.pattern);
         this.var_1403 = this.parseElements(_loc2_.walls.pattern);
         this.var_1406 = this.parseElements(_loc2_.landscapes.pattern);
         for each(_loc3_ in page.offers)
         {
            _loc5_ = _loc3_.productContainer.firstProduct;
            _loc6_ = _loc3_.localizationId;
            _loc7_ = _loc6_ != null ? _loc6_.split(" ") : null;
            if(_loc7_ == null || _loc7_.length != 2)
            {
               continue;
            }
            _loc8_ = _loc7_[1];
            _loc9_ = _loc5_.furnitureData.name;
            switch(_loc9_)
            {
               case "floor":
                  for(_loc10_ in this.var_1136)
                  {
                     _loc11_ = this.var_1136[_loc10_];
                     if(this.var_744.indexOf(_loc10_) == -1)
                     {
                        this.var_744.push(_loc10_);
                        this.var_1405.push(_loc3_);
                     }
                  }
                  break;
               case "wallpaper":
                  if(this.var_1403[_loc8_] != null)
                  {
                     this.var_922.push(_loc8_);
                     this.var_1404.push(_loc3_);
                  }
                  else
                  {
                     Logger.log("[SpacesCatalogWidget] Could not find wallpaper pattern configuration! " + [_loc6_,_loc9_]);
                  }
                  break;
               case "landscape":
                  if(this.var_1406[_loc8_] != null)
                  {
                     this.var_923.push(_loc8_);
                     this._landscapeOffers.push(_loc3_);
                  }
                  else
                  {
                     Logger.log("[SpacesCatalogWidget] Could not find landscape pattern configuration! " + [_loc6_,_loc9_]);
                  }
                  break;
               default:
                  Logger.log("[SpacesCatalogWidget] : " + _loc9_);
                  break;
            }
         }
         _loc4_ = 0;
         while(_loc4_ < _window.numChildren)
         {
            _loc12_ = _window.getChildAt(_loc4_);
            if(_loc12_ is IButtonWindow)
            {
               _loc12_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onClick);
            }
            _loc4_++;
         }
         this.changePattern(const_108,0);
         this.changePattern(const_243,0);
         this.changePattern(TYPE_LANDSCAPE,0);
         this.updateConfiguration();
         events.dispatchEvent(new CatalogWidgetUpdateRoomPreviewEvent(this._floorType,this.var_1695,this.var_1696,64));
         return true;
      }
      
      private function parseElements(param1:XMLList) : Dictionary
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc2_:Dictionary = new Dictionary();
         if(param1 != null)
         {
            for each(_loc3_ in param1)
            {
               _loc4_ = String(_loc3_.@id);
               if(_loc4_ != null)
               {
                  _loc5_ = new Array();
                  _loc2_[_loc4_] = _loc5_;
                  _loc6_ = _loc3_.children();
                  if(_loc6_ != null && _loc6_.length() > 0)
                  {
                     for each(_loc7_ in _loc6_)
                     {
                        _loc8_ = _loc7_.@id;
                        if(_loc8_ != null && _loc5_.indexOf(_loc8_) == -1)
                        {
                           _loc5_.push(_loc8_);
                        }
                     }
                  }
               }
            }
         }
         return _loc2_;
      }
      
      private function onClick(param1:WindowMouseEvent) : void
      {
         var _loc3_:* = null;
         var _loc2_:IWindow = param1.target as IWindow;
         if(_loc2_ == null)
         {
            return;
         }
         switch(_loc2_.name)
         {
            case "ctlg_wall_pattern_prev":
               this.changePattern(const_243,-1);
               break;
            case "ctlg_wall_pattern_next":
               this.changePattern(const_243,1);
               break;
            case "ctlg_wall_color_prev":
               this.changeColor(const_243,-1);
               break;
            case "ctlg_wall_color_next":
               this.changeColor(const_243,1);
               break;
            case "ctlg_buy_wall":
               _loc3_ = this.var_1404[this.var_499];
               if(_loc3_ != null)
               {
                  (page.viewer.catalog as HabboCatalog).showPurchaseConfirmation(_loc3_,page.pageId,this.var_1695);
               }
               break;
            case "ctlg_floor_pattern_prev":
               this.changePattern(const_108,-1);
               break;
            case "ctlg_floor_pattern_next":
               this.changePattern(const_108,1);
               break;
            case "ctlg_floor_color_prev":
               this.changeColor(const_108,-1);
               break;
            case "ctlg_floor_color_next":
               this.changeColor(const_108,1);
               break;
            case "ctlg_buy_floor":
               _loc3_ = this.var_1405[this.var_497];
               if(_loc3_ != null)
               {
                  (page.viewer.catalog as HabboCatalog).showPurchaseConfirmation(_loc3_,page.pageId,this._floorType);
               }
               break;
            case "ctlg_landscape_pattern_next":
               this.changePattern(TYPE_LANDSCAPE,-1);
               break;
            case "ctlg_landscape_pattern_prev":
               this.changePattern(TYPE_LANDSCAPE,1);
               break;
            case "ctlg_landscape_color_prev":
               this.changeColor(TYPE_LANDSCAPE,-1);
               break;
            case "ctlg_landscape_color_next":
               this.changeColor(TYPE_LANDSCAPE,1);
               break;
            case "ctlg_buy_landscape":
               _loc3_ = this._landscapeOffers[this.var_496];
               if(_loc3_ != null)
               {
                  (page.viewer.catalog as HabboCatalog).showPurchaseConfirmation(_loc3_,page.pageId,this.var_1696);
               }
               break;
            default:
               Logger.log("Spaces, unknown button: " + _loc2_.name);
         }
         this.updateConfiguration();
         events.dispatchEvent(new CatalogWidgetUpdateRoomPreviewEvent(this._floorType,this.var_1695,this.var_1696,64));
      }
      
      private function updateConfiguration() : void
      {
         var _loc11_:* = null;
         var _loc12_:* = null;
         var _loc13_:* = null;
         var _loc14_:* = null;
         var _loc15_:* = null;
         var _loc16_:* = null;
         var _loc1_:ICoreLocalizationManager = (page.viewer.catalog as HabboCatalog).localization;
         var _loc2_:String = this.var_744[this.var_497];
         var _loc3_:Array = this.var_1136[_loc2_];
         if(_loc3_ != null && this.var_498 >= 0)
         {
            _loc11_ = _loc3_[this.var_498];
            if(_loc11_ != null)
            {
               this._floorType = _loc11_;
            }
         }
         var _loc4_:Offer = this.var_1405[this.var_497];
         if(_loc4_ != null)
         {
            _loc12_ = _window.findChildByName("ctlg_floor_price") as ITextWindow;
            if(_loc12_ != null)
            {
               _loc12_.caption = _loc1_.registerParameter("catalog.purchase.price.credits","credits",String(_loc4_.priceInCredits));
            }
         }
         var _loc5_:String = this.var_922[this.var_499];
         var _loc6_:Array = this.var_1403[_loc5_];
         if(_loc6_ != null && this.var_500 >= 0)
         {
            _loc13_ = _loc6_[this.var_500];
            if(_loc13_ != null)
            {
               this.var_1695 = _loc13_;
            }
         }
         var _loc7_:Offer = this.var_1404[this.var_499];
         if(_loc7_ != null)
         {
            _loc14_ = _window.findChildByName("ctlg_wall_price") as ITextWindow;
            if(_loc14_ != null)
            {
               _loc14_.caption = _loc1_.registerParameter("catalog.purchase.price.credits","credits",String(_loc7_.priceInCredits));
            }
         }
         var _loc8_:String = this.var_923[this.var_496];
         var _loc9_:Array = this.var_1406[_loc8_];
         if(_loc9_ != null && this.var_501 >= 0)
         {
            _loc15_ = _loc9_[this.var_501];
            if(_loc15_ != null)
            {
               this.var_1696 = _loc15_;
            }
         }
         var _loc10_:Offer = this._landscapeOffers[this.var_496];
         if(_loc10_ != null)
         {
            _loc16_ = _window.findChildByName("ctlg_landscape_price") as ITextWindow;
            if(_loc16_ != null)
            {
               _loc16_.caption = _loc1_.registerParameter("catalog.purchase.price.credits","credits",String(_loc10_.priceInCredits));
            }
         }
      }
      
      private function changePattern(param1:String, param2:int) : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         switch(param1)
         {
            case const_108:
               this.var_497 += param2;
               if(this.var_497 < 0)
               {
                  this.var_497 = this.var_744.length - 1;
               }
               if(this.var_497 >= this.var_744.length)
               {
                  this.var_497 = 0;
               }
               this.var_498 = 0;
               this.var_1138 = 0;
               _loc5_ = this.var_744[this.var_497];
               _loc6_ = this.var_1136[_loc5_];
               if(_loc6_ != null)
               {
                  this.var_1138 = _loc6_.length;
               }
               _loc4_ = _window.findChildByName("ctlg_floor_color_prev") as IButtonWindow;
               _loc3_ = _window.findChildByName("ctlg_floor_color_next") as IButtonWindow;
               if(this.var_1138 < 2)
               {
                  if(_loc4_ != null)
                  {
                     _loc4_.disable();
                  }
                  if(_loc3_ != null)
                  {
                     _loc3_.disable();
                  }
               }
               else
               {
                  if(_loc4_ != null)
                  {
                     _loc4_.enable();
                  }
                  if(_loc3_ != null)
                  {
                     _loc3_.enable();
                  }
               }
               break;
            case const_243:
               this.var_499 += param2;
               if(this.var_499 < 0)
               {
                  this.var_499 = this.var_922.length - 1;
               }
               if(this.var_499 == this.var_922.length)
               {
                  this.var_499 = 0;
               }
               this.var_500 = 0;
               this.var_1135 = 0;
               _loc7_ = this.var_922[this.var_499];
               _loc8_ = this.var_1403[_loc7_];
               if(_loc8_ != null)
               {
                  this.var_1135 = _loc8_.length;
               }
               _loc4_ = _window.findChildByName("ctlg_wall_color_prev") as IButtonWindow;
               _loc3_ = _window.findChildByName("ctlg_wall_color_next") as IButtonWindow;
               if(this.var_1135 < 2)
               {
                  if(_loc4_ != null)
                  {
                     _loc4_.disable();
                  }
                  if(_loc3_ != null)
                  {
                     _loc3_.disable();
                  }
               }
               else
               {
                  if(_loc4_ != null)
                  {
                     _loc4_.enable();
                  }
                  if(_loc3_ != null)
                  {
                     _loc3_.enable();
                  }
               }
               break;
            case TYPE_LANDSCAPE:
               this.var_496 += param2;
               if(this.var_496 < 0)
               {
                  this.var_496 = this.var_923.length - 1;
               }
               if(this.var_496 >= this.var_923.length)
               {
                  this.var_496 = 0;
               }
               this.var_501 = 0;
               this.var_1137 = 0;
               _loc9_ = this.var_923[this.var_496];
               _loc10_ = this.var_1406[_loc9_];
               if(_loc10_ != null)
               {
                  this.var_1137 = _loc10_.length;
               }
               _loc4_ = _window.findChildByName("ctlg_landscape_color_prev") as IButtonWindow;
               _loc3_ = _window.findChildByName("ctlg_landscape_color_next") as IButtonWindow;
               if(this.var_1137 < 2)
               {
                  if(_loc4_ != null)
                  {
                     _loc4_.disable();
                  }
                  if(_loc3_ != null)
                  {
                     _loc3_.disable();
                  }
               }
               else
               {
                  if(_loc4_ != null)
                  {
                     _loc4_.enable();
                  }
                  if(_loc3_ != null)
                  {
                     _loc3_.enable();
                  }
               }
         }
      }
      
      private function changeColor(param1:String, param2:int) : void
      {
         switch(param1)
         {
            case const_108:
               this.var_498 += param2;
               if(this.var_498 < 0)
               {
                  if(this.var_1138 > 0)
                  {
                     this.var_498 = this.var_1138 - 1;
                  }
                  else
                  {
                     this.var_498 = 0;
                  }
               }
               if(this.var_498 >= this.var_1138)
               {
                  this.var_498 = 0;
               }
               break;
            case const_243:
               this.var_500 += param2;
               if(this.var_500 < 0)
               {
                  if(this.var_1135 > 0)
                  {
                     this.var_500 = this.var_1135 - 1;
                  }
                  else
                  {
                     this.var_500 = 0;
                  }
               }
               if(this.var_500 >= this.var_1135)
               {
                  this.var_500 = 0;
               }
               break;
            case TYPE_LANDSCAPE:
               this.var_501 += param2;
               if(this.var_501 < 0)
               {
                  if(this.var_1137 > 0)
                  {
                     this.var_501 = this.var_1137 - 1;
                  }
                  else
                  {
                     this.var_501 = 0;
                  }
               }
               if(this.var_501 >= this.var_1137)
               {
                  this.var_501 = 0;
               }
         }
      }
   }
}
