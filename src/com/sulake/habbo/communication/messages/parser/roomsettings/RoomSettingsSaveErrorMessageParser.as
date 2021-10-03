package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_2107:int = 1;
      
      public static const const_2300:int = 2;
      
      public static const const_2328:int = 3;
      
      public static const const_2252:int = 4;
      
      public static const const_1736:int = 5;
      
      public static const const_2326:int = 6;
      
      public static const const_2004:int = 7;
      
      public static const const_1831:int = 8;
      
      public static const const_2170:int = 9;
      
      public static const const_1811:int = 10;
      
      public static const const_1757:int = 11;
      
      public static const const_1936:int = 12;
       
      
      private var _roomId:int;
      
      private var var_1824:int;
      
      private var var_704:String;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._roomId = param1.readInteger();
         this.var_1824 = param1.readInteger();
         this.var_704 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get errorCode() : int
      {
         return this.var_1824;
      }
      
      public function get info() : String
      {
         return this.var_704;
      }
   }
}
