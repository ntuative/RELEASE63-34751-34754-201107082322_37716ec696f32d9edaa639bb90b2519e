package com.sulake.habbo.room.object.visualization.room.rasterizer.basic
{
   import flash.display.BitmapData;
   
   public class PlaneTextureBitmap
   {
      
      public static const const_60:Number = -1;
      
      public static const MAX_NORMAL_COORDINATE_VALUE:Number = 1;
       
      
      private var _bitmap:BitmapData = null;
      
      private var var_2405:Number = -1.0;
      
      private var _normalMaxX:Number = 1.0;
      
      private var var_2403:Number = -1.0;
      
      private var var_2404:Number = 1.0;
      
      public function PlaneTextureBitmap(param1:BitmapData, param2:Number = -1.0, param3:Number = 1.0, param4:Number = -1.0, param5:Number = 1.0)
      {
         super();
         this.var_2405 = param2;
         this._normalMaxX = param3;
         this.var_2403 = param4;
         this.var_2404 = param5;
         this._bitmap = param1;
      }
      
      public function get bitmap() : BitmapData
      {
         return this._bitmap;
      }
      
      public function get normalMinX() : Number
      {
         return this.var_2405;
      }
      
      public function get normalMaxX() : Number
      {
         return this._normalMaxX;
      }
      
      public function get normalMinY() : Number
      {
         return this.var_2403;
      }
      
      public function get normalMaxY() : Number
      {
         return this.var_2404;
      }
      
      public function dispose() : void
      {
         this._bitmap = null;
      }
   }
}
