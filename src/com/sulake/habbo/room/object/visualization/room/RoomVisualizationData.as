package com.sulake.habbo.room.object.visualization.room
{
   import com.sulake.habbo.room.object.visualization.room.mask.PlaneMaskManager;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.IPlaneRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.animated.LandscapeRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.FloorRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallAdRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallRasterizer;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.utils.IGraphicAssetCollection;
   
   public class RoomVisualizationData implements IRoomObjectVisualizationData
   {
       
      
      private var var_539:WallRasterizer;
      
      private var var_540:FloorRasterizer;
      
      private var var_790:WallAdRasterizer;
      
      private var var_538:LandscapeRasterizer;
      
      private var var_791:PlaneMaskManager;
      
      private var var_867:Boolean = false;
      
      public function RoomVisualizationData()
      {
         super();
         this.var_539 = new WallRasterizer();
         this.var_540 = new FloorRasterizer();
         this.var_790 = new WallAdRasterizer();
         this.var_538 = new LandscapeRasterizer();
         this.var_791 = new PlaneMaskManager();
      }
      
      public function get initialized() : Boolean
      {
         return this.var_867;
      }
      
      public function get floorRasterizer() : IPlaneRasterizer
      {
         return this.var_540;
      }
      
      public function get wallRasterizer() : IPlaneRasterizer
      {
         return this.var_539;
      }
      
      public function get wallAdRasterizr() : WallAdRasterizer
      {
         return this.var_790;
      }
      
      public function get landscapeRasterizer() : IPlaneRasterizer
      {
         return this.var_538;
      }
      
      public function get maskManager() : PlaneMaskManager
      {
         return this.var_791;
      }
      
      public function dispose() : void
      {
         if(this.var_539 != null)
         {
            this.var_539.dispose();
            this.var_539 = null;
         }
         if(this.var_540 != null)
         {
            this.var_540.dispose();
            this.var_540 = null;
         }
         if(this.var_790 != null)
         {
            this.var_790.dispose();
            this.var_790 = null;
         }
         if(this.var_538 != null)
         {
            this.var_538.dispose();
            this.var_538 = null;
         }
         if(this.var_791 != null)
         {
            this.var_791.dispose();
            this.var_791 = null;
         }
      }
      
      public function clearCache() : void
      {
         if(this.var_539 != null)
         {
            this.var_539.clearCache();
         }
         if(this.var_540 != null)
         {
            this.var_540.clearCache();
         }
         if(this.var_538 != null)
         {
            this.var_538.clearCache();
         }
      }
      
      public function initialize(param1:XML) : Boolean
      {
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         this.reset();
         if(param1 == null)
         {
            return false;
         }
         var _loc2_:XMLList = param1.wallData;
         if(_loc2_.length() > 0)
         {
            _loc7_ = _loc2_[0];
            this.var_539.initialize(_loc7_);
         }
         var _loc3_:XMLList = param1.floorData;
         if(_loc3_.length() > 0)
         {
            _loc8_ = _loc3_[0];
            this.var_540.initialize(_loc8_);
         }
         var _loc4_:XMLList = param1.wallAdData;
         if(_loc4_.length() > 0)
         {
            _loc9_ = _loc4_[0];
            this.var_790.initialize(_loc9_);
         }
         var _loc5_:XMLList = param1.landscapeData;
         if(_loc5_.length() > 0)
         {
            _loc10_ = _loc5_[0];
            this.var_538.initialize(_loc10_);
         }
         var _loc6_:XMLList = param1.maskData;
         if(_loc6_.length() > 0)
         {
            _loc11_ = _loc6_[0];
            this.var_791.initialize(_loc11_);
         }
         return true;
      }
      
      public function initializeAssetCollection(param1:IGraphicAssetCollection) : void
      {
         if(this.var_867)
         {
            return;
         }
         this.var_539.initializeAssetCollection(param1);
         this.var_540.initializeAssetCollection(param1);
         this.var_790.initializeAssetCollection(param1);
         this.var_538.initializeAssetCollection(param1);
         this.var_791.initializeAssetCollection(param1);
         this.var_867 = true;
      }
      
      protected function reset() : void
      {
      }
   }
}
