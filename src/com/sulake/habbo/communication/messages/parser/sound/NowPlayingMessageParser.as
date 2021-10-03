package com.sulake.habbo.communication.messages.parser.sound
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NowPlayingMessageParser implements IMessageParser
   {
       
      
      private var var_2176:int;
      
      private var _currentPosition:int;
      
      private var var_2178:int;
      
      private var var_2179:int;
      
      private var var_2177:int;
      
      public function NowPlayingMessageParser()
      {
         super();
      }
      
      public function get currentSongId() : int
      {
         return this.var_2176;
      }
      
      public function get currentPosition() : int
      {
         return this._currentPosition;
      }
      
      public function get nextSongId() : int
      {
         return this.var_2178;
      }
      
      public function get nextPosition() : int
      {
         return this.var_2179;
      }
      
      public function get syncCount() : int
      {
         return this.var_2177;
      }
      
      public function flush() : Boolean
      {
         this.var_2176 = -1;
         this._currentPosition = -1;
         this.var_2178 = -1;
         this.var_2179 = -1;
         this.var_2177 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2176 = param1.readInteger();
         this._currentPosition = param1.readInteger();
         this.var_2178 = param1.readInteger();
         this.var_2179 = param1.readInteger();
         this.var_2177 = param1.readInteger();
         return true;
      }
   }
}
