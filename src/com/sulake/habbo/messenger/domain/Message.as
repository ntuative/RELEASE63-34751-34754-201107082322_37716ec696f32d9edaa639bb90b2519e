package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_953:int = 1;
      
      public static const const_826:int = 2;
      
      public static const const_855:int = 3;
      
      public static const const_1341:int = 4;
      
      public static const const_763:int = 5;
      
      public static const const_1274:int = 6;
       
      
      private var _type:int;
      
      private var var_1210:int;
      
      private var var_2445:String;
      
      private var var_2637:String;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this._type = param1;
         this.var_1210 = param2;
         this.var_2445 = param3;
         this.var_2637 = param4;
      }
      
      public function get messageText() : String
      {
         return this.var_2445;
      }
      
      public function get time() : String
      {
         return this.var_2637;
      }
      
      public function get senderId() : int
      {
         return this.var_1210;
      }
      
      public function get type() : int
      {
         return this._type;
      }
   }
}
