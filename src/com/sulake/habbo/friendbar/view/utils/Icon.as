package com.sulake.habbo.friendbar.view.utils
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import flash.display.BitmapData;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   
   public class Icon implements IDisposable
   {
      
      protected static const const_2338:int = 0;
      
      protected static const const_466:int = 1;
      
      protected static const const_2041:int = 2;
      
      protected static const const_2042:int = 3;
      
      protected static const const_122:int = 4;
      
      protected static const const_465:int = 8;
      
      protected static const const_260:int = 18;
      
      protected static const const_2043:int = 18;
       
      
      private var _disposed:Boolean = false;
      
      private var var_1911:Boolean = false;
      
      protected var var_48:BitmapDataAsset;
      
      protected var var_99:IBitmapWrapperWindow;
      
      private var var_1263:uint;
      
      protected var var_225:Timer;
      
      protected var _frame:int = 0;
      
      private var var_666:Point;
      
      protected var var_933:Boolean = false;
      
      protected var _hover:Boolean = false;
      
      public function Icon()
      {
         this.var_1263 = const_466 | const_465;
         this.var_666 = new Point();
         super();
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get disabled() : Boolean
      {
         return this.var_1911;
      }
      
      protected function set image(param1:BitmapDataAsset) : void
      {
         this.var_48 = param1;
         this.redraw();
      }
      
      protected function get image() : BitmapDataAsset
      {
         return this.var_48;
      }
      
      protected function set canvas(param1:IBitmapWrapperWindow) : void
      {
         this.var_99 = param1;
         this.redraw();
      }
      
      protected function get canvas() : IBitmapWrapperWindow
      {
         return this.var_99;
      }
      
      protected function set alignment(param1:uint) : void
      {
         this.var_1263 = param1;
         this.redraw();
      }
      
      protected function get alignment() : uint
      {
         return this.var_1263;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this.toggleTimer(false,0);
            this.image = null;
            this.canvas = null;
            this._disposed = true;
         }
      }
      
      public function notify(param1:Boolean) : void
      {
         this.var_933 = param1;
         if(this.var_933 && this.var_1911)
         {
            this.enable(true);
         }
      }
      
      public function hover(param1:Boolean) : void
      {
         this._hover = param1;
      }
      
      public function enable(param1:Boolean) : void
      {
         this.var_1911 = !param1;
      }
      
      protected function redraw() : void
      {
         var _loc1_:* = null;
         if(this.var_99 && !this.var_99.disposed)
         {
            if(!this.var_99.bitmap)
            {
               this.var_99.bitmap = new BitmapData(this.var_99.width,this.var_99.height,true,0);
            }
            else
            {
               this.var_99.bitmap.fillRect(this.var_99.bitmap.rect,0);
            }
            if(this.var_48 && !this.var_48.disposed)
            {
               this.var_666.x = this.var_666.y = 0;
               _loc1_ = this.var_48.content as BitmapData;
               switch(this.var_1263 & const_2042)
               {
                  case const_466:
                     this.var_666.x = this.var_99.bitmap.width / 2 - _loc1_.width / 2;
                     break;
                  case const_2041:
                     this.var_666.x = this.var_99.bitmap.width - _loc1_.width;
               }
               switch(this.var_1263 & const_2043)
               {
                  case const_465:
                     this.var_666.y = this.var_99.bitmap.height / 2 - _loc1_.height / 2;
                     break;
                  case const_260:
                     this.var_666.y = this.var_99.bitmap.height - _loc1_.height;
               }
               this.var_99.bitmap.copyPixels(_loc1_,_loc1_.rect,this.var_666);
               this.var_99.invalidate();
            }
         }
      }
      
      protected function toggleTimer(param1:Boolean, param2:int) : void
      {
         if(param1)
         {
            if(!this.var_225)
            {
               this.var_225 = new Timer(param2,0);
               this.var_225.addEventListener(TimerEvent.TIMER,this.onTimerEvent);
               this.var_225.start();
               this.onTimerEvent(null);
            }
            this.var_225.delay = param2;
         }
         else
         {
            this._frame = 0;
            if(this.var_225)
            {
               this.var_225.reset();
               this.var_225.removeEventListener(TimerEvent.TIMER,this.onTimerEvent);
               this.var_225 = null;
            }
         }
      }
      
      protected function onTimerEvent(param1:TimerEvent) : void
      {
      }
   }
}
