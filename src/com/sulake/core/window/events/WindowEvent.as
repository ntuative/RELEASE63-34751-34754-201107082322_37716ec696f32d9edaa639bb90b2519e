package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   
   public class WindowEvent
   {
      
      public static const const_1935:String = "WE_DESTROY";
      
      public static const const_362:String = "WE_DESTROYED";
      
      public static const const_1994:String = "WE_OPEN";
      
      public static const const_1904:String = "WE_OPENED";
      
      public static const const_1903:String = "WE_CLOSE";
      
      public static const const_1913:String = "WE_CLOSED";
      
      public static const const_1885:String = "WE_FOCUS";
      
      public static const const_347:String = "WE_FOCUSED";
      
      public static const const_1858:String = "WE_UNFOCUS";
      
      public static const const_1747:String = "WE_UNFOCUSED";
      
      public static const const_2035:String = "WE_ACTIVATE";
      
      public static const const_554:String = "WE_ACTIVATED";
      
      public static const const_1980:String = "WE_DEACTIVATE";
      
      public static const const_537:String = "WE_DEACTIVATED";
      
      public static const const_363:String = "WE_SELECT";
      
      public static const const_48:String = "WE_SELECTED";
      
      public static const const_495:String = "WE_UNSELECT";
      
      public static const const_592:String = "WE_UNSELECTED";
      
      public static const const_1894:String = "WE_LOCK";
      
      public static const const_1794:String = "WE_LOCKED";
      
      public static const const_2006:String = "WE_UNLOCK";
      
      public static const const_1847:String = "WE_UNLOCKED";
      
      public static const const_861:String = "WE_ENABLE";
      
      public static const const_313:String = "WE_ENABLED";
      
      public static const const_1020:String = "WE_DISABLE";
      
      public static const const_302:String = "WE_DISABLED";
      
      public static const WINDOW_EVENT_RELOCATE:String = "WE_RELOCATE";
      
      public static const const_394:String = "WE_RELOCATED";
      
      public static const const_1273:String = "WE_RESIZE";
      
      public static const const_40:String = "WE_RESIZED";
      
      public static const const_1739:String = "WE_MINIMIZE";
      
      public static const const_1973:String = "WE_MINIMIZED";
      
      public static const const_1959:String = "WE_MAXIMIZE";
      
      public static const const_1952:String = "WE_MAXIMIZED";
      
      public static const const_1893:String = "WE_RESTORE";
      
      public static const const_1988:String = "WE_RESTORED";
      
      public static const const_625:String = "WE_CHILD_ADDED";
      
      public static const const_447:String = "WE_CHILD_REMOVED";
      
      public static const const_219:String = "WE_CHILD_RELOCATED";
      
      public static const const_145:String = "WE_CHILD_RESIZED";
      
      public static const const_358:String = "WE_CHILD_ACTIVATED";
      
      public static const const_656:String = "WE_PARENT_ADDED";
      
      public static const const_1830:String = "WE_PARENT_REMOVED";
      
      public static const const_1745:String = "WE_PARENT_RELOCATED";
      
      public static const const_553:String = "WE_PARENT_RESIZED";
      
      public static const const_1325:String = "WE_PARENT_ACTIVATED";
      
      public static const const_143:String = "WE_OK";
      
      public static const const_502:String = "WE_CANCEL";
      
      public static const const_112:String = "WE_CHANGE";
      
      public static const const_497:String = "WE_SCROLL";
      
      public static const const_115:String = "";
      
      private static const POOL:Array = [];
       
      
      protected var _type:String;
      
      protected var _window:IWindow;
      
      protected var var_749:IWindow;
      
      protected var var_1144:Boolean;
      
      protected var var_505:Boolean;
      
      protected var var_168:Boolean;
      
      protected var var_748:Array;
      
      public function WindowEvent()
      {
         super();
      }
      
      public static function allocate(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false) : WindowEvent
      {
         var _loc5_:WindowEvent = POOL.length > 0 ? POOL.pop() : new WindowEvent();
         _loc5_._type = param1;
         _loc5_._window = param2;
         _loc5_.var_749 = param3;
         _loc5_.var_505 = param4;
         _loc5_.var_168 = false;
         _loc5_.var_748 = POOL;
         return _loc5_;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get target() : IWindow
      {
         return this._window;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_749;
      }
      
      public function get cancelable() : Boolean
      {
         return this.var_505;
      }
      
      public function recycle() : void
      {
         if(this.var_168)
         {
            throw new Error("Event already recycled!");
         }
         this.var_749 = null;
         this._window = null;
         this.var_168 = true;
         this.var_1144 = false;
         this.var_748.push(this);
      }
      
      public function clone() : WindowEvent
      {
         return allocate(this._type,this.window,this.related,this.cancelable);
      }
      
      public function preventDefault() : void
      {
         this.preventWindowOperation();
      }
      
      public function isDefaultPrevented() : Boolean
      {
         return this.var_1144;
      }
      
      public function preventWindowOperation() : void
      {
         if(this.cancelable)
         {
            this.var_1144 = true;
            return;
         }
         throw new Error("Attempted to prevent window operation that is not cancelable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_1144;
      }
      
      public function stopPropagation() : void
      {
         this.var_1144 = true;
      }
      
      public function stopImmediatePropagation() : void
      {
         this.var_1144 = true;
      }
      
      public function toString() : String
      {
         return "WindowEvent { type: " + this._type + " cancelable: " + this.var_505 + " window: " + this._window + " }";
      }
   }
}
