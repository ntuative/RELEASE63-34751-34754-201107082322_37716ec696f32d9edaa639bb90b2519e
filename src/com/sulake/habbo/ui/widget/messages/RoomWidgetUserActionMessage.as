package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_523:String = "RWUAM_WHISPER_USER";
      
      public static const const_536:String = "RWUAM_IGNORE_USER";
      
      public static const const_580:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_395:String = "RWUAM_KICK_USER";
      
      public static const const_566:String = "RWUAM_BAN_USER";
      
      public static const const_590:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_589:String = "RWUAM_RESPECT_USER";
      
      public static const const_614:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_542:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_506:String = "RWUAM_START_TRADING";
      
      public static const const_989:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_654:String = "RWUAM_KICK_BOT";
      
      public static const const_672:String = "RWUAM_REPORT";
      
      public static const const_511:String = "RWUAM_PICKUP_PET";
      
      public static const const_1970:String = "RWUAM_TRAIN_PET";
      
      public static const const_559:String = " RWUAM_RESPECT_PET";
      
      public static const const_252:String = "RWUAM_REQUEST_PET_UPDATE";
      
      public static const const_602:String = "RWUAM_START_NAME_CHANGE";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         this._userId = param2;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
   }
}
