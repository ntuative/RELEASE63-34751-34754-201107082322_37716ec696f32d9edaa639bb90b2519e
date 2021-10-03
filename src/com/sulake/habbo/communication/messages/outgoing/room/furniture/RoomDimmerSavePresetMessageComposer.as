package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_2642:int;
      
      private var var_2643:int;
      
      private var var_2644:String;
      
      private var var_2646:int;
      
      private var var_2645:Boolean;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         this._roomId = param6;
         this._roomCategory = param7;
         this.var_2642 = param1;
         this.var_2643 = param2;
         this.var_2644 = param3;
         this.var_2646 = param4;
         this.var_2645 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2642,this.var_2643,this.var_2644,this.var_2646,int(this.var_2645)];
      }
      
      public function dispose() : void
      {
      }
   }
}
