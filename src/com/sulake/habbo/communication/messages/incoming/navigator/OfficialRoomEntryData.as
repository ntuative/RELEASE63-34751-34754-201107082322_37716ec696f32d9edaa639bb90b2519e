package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1406:int = 1;
      
      public static const const_976:int = 2;
      
      public static const const_846:int = 3;
      
      public static const const_1791:int = 4;
       
      
      private var _index:int;
      
      private var var_2647:String;
      
      private var var_2651:String;
      
      private var var_2649:Boolean;
      
      private var var_2648:String;
      
      private var var_989:String;
      
      private var var_2650:int;
      
      private var var_2307:int;
      
      private var _type:int;
      
      private var var_2475:String;
      
      private var var_1039:GuestRoomData;
      
      private var var_1040:PublicRoomData;
      
      private var _open:Boolean;
      
      private var _disposed:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         this._index = param1.readInteger();
         this.var_2647 = param1.readString();
         this.var_2651 = param1.readString();
         this.var_2649 = param1.readInteger() == 1;
         this.var_2648 = param1.readString();
         this.var_989 = param1.readString();
         this.var_2650 = param1.readInteger();
         this.var_2307 = param1.readInteger();
         this._type = param1.readInteger();
         if(this._type == const_1406)
         {
            this.var_2475 = param1.readString();
         }
         else if(this._type == const_846)
         {
            this.var_1040 = new PublicRoomData(param1);
         }
         else if(this._type == const_976)
         {
            this.var_1039 = new GuestRoomData(param1);
         }
         else
         {
            this._open = param1.readBoolean();
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_1039 != null)
         {
            this.var_1039.dispose();
            this.var_1039 = null;
         }
         if(this.var_1040 != null)
         {
            this.var_1040.dispose();
            this.var_1040 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get popupCaption() : String
      {
         return this.var_2647;
      }
      
      public function get popupDesc() : String
      {
         return this.var_2651;
      }
      
      public function get showDetails() : Boolean
      {
         return this.var_2649;
      }
      
      public function get picText() : String
      {
         return this.var_2648;
      }
      
      public function get picRef() : String
      {
         return this.var_989;
      }
      
      public function get folderId() : int
      {
         return this.var_2650;
      }
      
      public function get tag() : String
      {
         return this.var_2475;
      }
      
      public function get userCount() : int
      {
         return this.var_2307;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return this.var_1039;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return this.var_1040;
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function toggleOpen() : void
      {
         this._open = !this._open;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_1406)
         {
            return 0;
         }
         if(this.type == const_976)
         {
            return this.var_1039.maxUserCount;
         }
         if(this.type == const_846)
         {
            return this.var_1040.maxUsers;
         }
         return 0;
      }
   }
}
