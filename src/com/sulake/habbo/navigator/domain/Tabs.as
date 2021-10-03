package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_366:int = 1;
      
      public static const const_231:int = 2;
      
      public static const const_299:int = 3;
      
      public static const const_371:int = 4;
      
      public static const const_276:int = 5;
      
      public static const const_449:int = 1;
      
      public static const const_773:int = 2;
      
      public static const const_1021:int = 3;
      
      public static const const_967:int = 4;
      
      public static const const_244:int = 5;
      
      public static const const_947:int = 6;
      
      public static const const_985:int = 7;
      
      public static const const_410:int = 8;
      
      public static const const_581:int = 9;
      
      public static const const_2141:int = 10;
      
      public static const const_911:int = 11;
      
      public static const const_507:int = 12;
       
      
      private var var_468:Array;
      
      private var _navigator:HabboNavigator;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_468 = new Array();
         this.var_468.push(new Tab(this._navigator,const_366,const_507,new EventsTabPageDecorator(this._navigator),MainViewCtrl.const_509));
         this.var_468.push(new Tab(this._navigator,const_231,const_449,new RoomsTabPageDecorator(this._navigator),MainViewCtrl.const_509));
         this.var_468.push(new Tab(this._navigator,const_371,const_911,new OfficialTabPageDecorator(this._navigator),MainViewCtrl.const_1169));
         this.var_468.push(new Tab(this._navigator,const_299,const_244,new MyRoomsTabPageDecorator(this._navigator),MainViewCtrl.const_509));
         this.var_468.push(new Tab(this._navigator,const_276,const_410,new SearchTabPageDecorator(this._navigator),MainViewCtrl.const_1293));
         this.setSelectedTab(const_366);
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_371;
      }
      
      public function get tabs() : Array
      {
         return this.var_468;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         this.getTab(param1).selected = true;
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_468)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_468)
         {
            _loc1_.selected = false;
         }
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_468)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
