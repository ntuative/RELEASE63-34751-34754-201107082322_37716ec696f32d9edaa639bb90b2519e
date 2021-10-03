package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_1872:int;
      
      private var var_2296:String;
      
      private var var_997:String;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1872 = param1.readInteger();
         this.var_2296 = param1.readString();
         this.var_997 = param1.readString();
      }
      
      public function get slotId() : int
      {
         return this.var_1872;
      }
      
      public function get figureString() : String
      {
         return this.var_2296;
      }
      
      public function get gender() : String
      {
         return this.var_997;
      }
   }
}
