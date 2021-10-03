package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class ToolbarClickTracker
   {
       
      
      private var var_1434:IHabboTracking;
      
      private var var_1743:Boolean = false;
      
      private var var_2712:int = 0;
      
      private var var_1965:int = 0;
      
      public function ToolbarClickTracker(param1:IHabboTracking)
      {
         super();
         this.var_1434 = param1;
      }
      
      public function dispose() : void
      {
         this.var_1434 = null;
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_1743 = Boolean(parseInt(param1.getKey("toolbar.tracking.enabled","1")));
         this.var_2712 = parseInt(param1.getKey("toolbar.tracking.max.events","100"));
      }
      
      public function track(param1:String) : void
      {
         if(!this.var_1743)
         {
            return;
         }
         ++this.var_1965;
         if(this.var_1965 <= this.var_2712)
         {
            this.var_1434.trackGoogle("toolbar",param1);
         }
      }
   }
}
