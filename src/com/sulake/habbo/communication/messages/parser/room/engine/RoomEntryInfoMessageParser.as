package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1980:Boolean;
      
      private var var_2746:int;
      
      private var _owner:Boolean;
      
      private var var_1303:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function get privateRoom() : Boolean
      {
         return this.var_1980;
      }
      
      public function get guestRoomId() : int
      {
         return this.var_2746;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return this.var_1303;
      }
      
      public function get owner() : Boolean
      {
         return this._owner;
      }
      
      public function flush() : Boolean
      {
         if(this.var_1303 != null)
         {
            this.var_1303.dispose();
            this.var_1303 = null;
         }
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1980 = param1.readBoolean();
         if(this.var_1980)
         {
            this.var_2746 = param1.readInteger();
            this._owner = param1.readBoolean();
         }
         else
         {
            this.var_1303 = new PublicRoomShortData(param1);
         }
         return true;
      }
   }
}
