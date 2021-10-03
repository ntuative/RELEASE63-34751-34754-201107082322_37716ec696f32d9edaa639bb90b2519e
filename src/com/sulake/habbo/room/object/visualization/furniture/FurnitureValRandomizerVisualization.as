package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1112:int = 20;
      
      private static const const_712:int = 10;
      
      private static const const_1623:int = 31;
      
      private static const const_1568:int = 32;
      
      private static const const_711:int = 30;
       
      
      private var var_339:Array;
      
      private var var_834:Boolean = false;
      
      public function FurnitureValRandomizerVisualization()
      {
         this.var_339 = new Array();
         super();
         super.setAnimation(const_711);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
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
         if(param1 > 0 && param1 <= const_712)
         {
            if(this.var_834)
            {
               this.var_834 = false;
               this.var_339 = new Array();
               if(direction == 2)
               {
                  this.var_339.push(const_1112 + 5 - param1);
                  this.var_339.push(const_712 + 5 - param1);
               }
               else
               {
                  this.var_339.push(const_1112 + param1);
                  this.var_339.push(const_712 + param1);
               }
               this.var_339.push(const_711);
               return;
            }
            super.setAnimation(const_711);
         }
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(super.getLastFramePlayed(11))
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
