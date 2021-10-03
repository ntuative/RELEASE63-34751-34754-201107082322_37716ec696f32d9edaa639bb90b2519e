package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var var_1814:Boolean;
      
      private var var_2408:int;
      
      private var var_2409:String;
      
      private var var_373:int;
      
      private var var_2410:int;
      
      private var var_1837:String;
      
      private var var_2407:String;
      
      private var var_2411:String;
      
      private var var_939:Array;
      
      private var _disposed:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         this.var_939 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_1814 = false;
            return;
         }
         this.var_1814 = true;
         this.var_2408 = int(_loc2_);
         this.var_2409 = param1.readString();
         this.var_373 = int(param1.readString());
         this.var_2410 = param1.readInteger();
         this.var_1837 = param1.readString();
         this.var_2407 = param1.readString();
         this.var_2411 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            this.var_939.push(_loc5_);
            _loc4_++;
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_939 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get ownerAvatarId() : int
      {
         return this.var_2408;
      }
      
      public function get ownerAvatarName() : String
      {
         return this.var_2409;
      }
      
      public function get flatId() : int
      {
         return this.var_373;
      }
      
      public function get eventType() : int
      {
         return this.var_2410;
      }
      
      public function get eventName() : String
      {
         return this.var_1837;
      }
      
      public function get eventDescription() : String
      {
         return this.var_2407;
      }
      
      public function get creationTime() : String
      {
         return this.var_2411;
      }
      
      public function get tags() : Array
      {
         return this.var_939;
      }
      
      public function get exists() : Boolean
      {
         return this.var_1814;
      }
   }
}
