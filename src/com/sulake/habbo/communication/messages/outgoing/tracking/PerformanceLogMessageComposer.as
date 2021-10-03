package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_2616:int = 0;
      
      private var var_1475:String = "";
      
      private var var_1799:String = "";
      
      private var var_2392:String = "";
      
      private var var_2613:String = "";
      
      private var var_1922:int = 0;
      
      private var var_2614:int = 0;
      
      private var var_2615:int = 0;
      
      private var var_1474:int = 0;
      
      private var var_2617:int = 0;
      
      private var var_1472:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_2616 = param1;
         this.var_1475 = param2;
         this.var_1799 = param3;
         this.var_2392 = param4;
         this.var_2613 = param5;
         if(param6)
         {
            this.var_1922 = 1;
         }
         else
         {
            this.var_1922 = 0;
         }
         this.var_2614 = param7;
         this.var_2615 = param8;
         this.var_1474 = param9;
         this.var_2617 = param10;
         this.var_1472 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2616,this.var_1475,this.var_1799,this.var_2392,this.var_2613,this.var_1922,this.var_2614,this.var_2615,this.var_1474,this.var_2617,this.var_1472];
      }
   }
}
