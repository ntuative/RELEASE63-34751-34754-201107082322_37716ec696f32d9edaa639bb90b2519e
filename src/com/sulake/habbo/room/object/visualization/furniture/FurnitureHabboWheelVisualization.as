package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureHabboWheelVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1112:int = 10;
      
      private static const const_712:int = 20;
      
      private static const const_1623:int = 31;
      
      private static const const_1568:int = 32;
       
      
      private var var_339:Array;
      
      private var var_834:Boolean = false;
      
      public function FurnitureHabboWheelVisualization()
      {
         this.var_339 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            if(!this.var_834)
            {
               this.var_834 = true;
               this.var_339 = new Array();
               this.var_339.push(const_1623);
               this.var_339.push(const_1568);
               return;
            }
         }
         if(param1 > 0 && param1 <= const_1112)
         {
            if(this.var_834)
            {
               this.var_834 = false;
               this.var_339 = new Array();
               this.var_339.push(const_1112 + param1);
               this.var_339.push(const_712 + param1);
               this.var_339.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(super.getLastFramePlayed(1) && super.getLastFramePlayed(2) && super.getLastFramePlayed(3))
         {
            if(this.var_339.length > 0)
            {
               super.setAnimation(this.var_339.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
