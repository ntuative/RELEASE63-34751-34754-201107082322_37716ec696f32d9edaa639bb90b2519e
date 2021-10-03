package com.sulake.habbo.communication.messages.incoming.recycler
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class PrizeLevelMessageData
   {
       
      
      private var var_1611:int;
      
      private var var_2566:int;
      
      private var var_709:Array;
      
      public function PrizeLevelMessageData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1611 = param1.readInteger();
         this.var_2566 = param1.readInteger();
         this.var_709 = new Array();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.var_709.push(new PrizeMessageData(param1));
            _loc3_++;
         }
      }
      
      public function get prizeLevelId() : int
      {
         return this.var_1611;
      }
      
      public function get method_12() : int
      {
         return this.var_2566;
      }
      
      public function get prizes() : Array
      {
         return this.var_709;
      }
   }
}
