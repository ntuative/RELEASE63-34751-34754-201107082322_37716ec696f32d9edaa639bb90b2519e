package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_845:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_712:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_845);
         this.var_712 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return this.var_712;
      }
   }
}
