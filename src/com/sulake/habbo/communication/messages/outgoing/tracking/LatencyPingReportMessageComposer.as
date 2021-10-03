package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LatencyPingReportMessageComposer implements IMessageComposer
   {
       
      
      private var var_2481:int;
      
      private var var_2480:int;
      
      private var var_2479:int;
      
      public function LatencyPingReportMessageComposer(param1:int, param2:int, param3:int)
      {
         super();
         this.var_2481 = param1;
         this.var_2480 = param2;
         this.var_2479 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2481,this.var_2480,this.var_2479];
      }
      
      public function dispose() : void
      {
      }
   }
}
