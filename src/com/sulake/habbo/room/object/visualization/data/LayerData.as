package com.sulake.habbo.room.object.visualization.data
{
   public class LayerData
   {
      
      public static const const_749:String = "";
      
      public static const const_431:int = 0;
      
      public static const const_644:int = 255;
      
      public static const const_768:Boolean = false;
      
      public static const const_518:int = 0;
      
      public static const const_564:int = 0;
      
      public static const const_426:int = 0;
      
      public static const const_1352:int = 1;
      
      public static const const_1272:int = 2;
      
      public static const INK_DARKEN:int = 3;
       
      
      private var var_2475:String = "";
      
      private var var_2008:int = 0;
      
      private var var_2369:int = 255;
      
      private var var_2514:Boolean = false;
      
      private var var_2511:int = 0;
      
      private var var_2513:int = 0;
      
      private var var_2512:Number = 0;
      
      public function LayerData()
      {
         super();
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2475 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2475;
      }
      
      public function set ink(param1:int) : void
      {
         this.var_2008 = param1;
      }
      
      public function get ink() : int
      {
         return this.var_2008;
      }
      
      public function set alpha(param1:int) : void
      {
         this.var_2369 = param1;
      }
      
      public function get alpha() : int
      {
         return this.var_2369;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         this.var_2514 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return this.var_2514;
      }
      
      public function set xOffset(param1:int) : void
      {
         this.var_2511 = param1;
      }
      
      public function get xOffset() : int
      {
         return this.var_2511;
      }
      
      public function set yOffset(param1:int) : void
      {
         this.var_2513 = param1;
      }
      
      public function get yOffset() : int
      {
         return this.var_2513;
      }
      
      public function set zOffset(param1:Number) : void
      {
         this.var_2512 = param1;
      }
      
      public function get zOffset() : Number
      {
         return this.var_2512;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            this.tag = param1.tag;
            this.ink = param1.ink;
            this.alpha = param1.alpha;
            this.ignoreMouse = param1.ignoreMouse;
            this.xOffset = param1.xOffset;
            this.yOffset = param1.yOffset;
            this.zOffset = param1.zOffset;
         }
      }
   }
}
