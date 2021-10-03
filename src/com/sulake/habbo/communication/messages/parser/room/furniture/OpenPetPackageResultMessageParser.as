package com.sulake.habbo.communication.messages.parser.room.furniture
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class OpenPetPackageResultMessageParser implements IMessageParser
   {
       
      
      private var var_237:int = 0;
      
      private var var_1823:int = 0;
      
      private var var_1762:String = null;
      
      public function OpenPetPackageResultMessageParser()
      {
         super();
      }
      
      public function get objectId() : int
      {
         return this.var_237;
      }
      
      public function get nameValidationStatus() : int
      {
         return this.var_1823;
      }
      
      public function get nameValidationInfo() : String
      {
         return this.var_1762;
      }
      
      public function flush() : Boolean
      {
         this.var_237 = 0;
         this.var_1823 = 0;
         this.var_1762 = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_237 = param1.readInteger();
         this.var_1823 = param1.readInteger();
         this.var_1762 = param1.readString();
         return true;
      }
   }
}
