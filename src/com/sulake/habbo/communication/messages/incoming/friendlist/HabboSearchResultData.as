package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2356:int;
      
      private var var_2007:String;
      
      private var var_2794:String;
      
      private var var_2861:Boolean;
      
      private var var_2859:Boolean;
      
      private var var_2862:int;
      
      private var var_2795:String;
      
      private var var_2860:String;
      
      private var var_1954:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2356 = param1.readInteger();
         this.var_2007 = param1.readString();
         this.var_2794 = param1.readString();
         this.var_2861 = param1.readBoolean();
         this.var_2859 = param1.readBoolean();
         param1.readString();
         this.var_2862 = param1.readInteger();
         this.var_2795 = param1.readString();
         this.var_2860 = param1.readString();
         this.var_1954 = param1.readString();
      }
      
      public function get avatarId() : int
      {
         return this.var_2356;
      }
      
      public function get avatarName() : String
      {
         return this.var_2007;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2794;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2861;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2859;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2862;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2795;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2860;
      }
      
      public function get realName() : String
      {
         return this.var_1954;
      }
   }
}
