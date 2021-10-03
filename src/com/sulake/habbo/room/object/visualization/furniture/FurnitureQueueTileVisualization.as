package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1568:int = 3;
      
      private static const const_1555:int = 2;
      
      private static const const_1556:int = 1;
      
      private static const const_1554:int = 15;
       
      
      private var var_339:Array;
      
      private var var_1268:int;
      
      public function FurnitureQueueTileVisualization()
      {
         this.var_339 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1555)
         {
            this.var_339 = new Array();
            this.var_339.push(const_1556);
            this.var_1268 = const_1554;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(this.var_1268 > 0)
         {
            --this.var_1268;
         }
         if(this.var_1268 == 0)
         {
            if(this.var_339.length > 0)
            {
               super.setAnimation(this.var_339.shift());
            }
         }
         return super.updateAnimation(param1);
      }
      
      override protected function usesAnimationResetting() : Boolean
      {
         return true;
      }
   }
}
