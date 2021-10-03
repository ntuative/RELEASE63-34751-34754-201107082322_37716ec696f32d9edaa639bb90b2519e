package com.sulake.habbo.communication.messages.parser.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.habbo.communication.messages.incoming.moderation.OffenceCategoryData;
   
   public class ModeratorInitData implements IDisposable
   {
       
      
      private var var_1680:Array;
      
      private var var_1681:Array;
      
      private var _issues:Array;
      
      private var var_1387:Array;
      
      private var var_3002:Boolean;
      
      private var var_3003:Boolean;
      
      private var var_3006:Boolean;
      
      private var var_3005:Boolean;
      
      private var var_3004:Boolean;
      
      private var var_3007:Boolean;
      
      private var var_3001:Boolean;
      
      private var _disposed:Boolean;
      
      public function ModeratorInitData(param1:IMessageDataWrapper)
      {
         super();
         var _loc2_:IssueInfoMessageParser = new IssueInfoMessageParser();
         this._issues = [];
         this.var_1680 = [];
         this.var_1681 = [];
         this.var_1387 = [];
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if(_loc2_.parse(param1))
            {
               this._issues.push(_loc2_.issueData);
            }
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            this.var_1680.push(param1.readString());
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            this.var_1387.push(new OffenceCategoryData(param1));
            _loc4_++;
         }
         this.var_3002 = param1.readBoolean();
         this.var_3003 = param1.readBoolean();
         this.var_3006 = param1.readBoolean();
         this.var_3005 = param1.readBoolean();
         this.var_3004 = param1.readBoolean();
         this.var_3007 = param1.readBoolean();
         this.var_3001 = param1.readBoolean();
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            this.var_1681.push(param1.readString());
            _loc4_++;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_1680 = null;
         this.var_1681 = null;
         this._issues = null;
         for each(_loc1_ in this.var_1387)
         {
            _loc1_.dispose();
         }
         this.var_1387 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get messageTemplates() : Array
      {
         return this.var_1680;
      }
      
      public function get roomMessageTemplates() : Array
      {
         return this.var_1681;
      }
      
      public function get issues() : Array
      {
         return this._issues;
      }
      
      public function get offenceCategories() : Array
      {
         return this.var_1387;
      }
      
      public function get cfhPermission() : Boolean
      {
         return this.var_3002;
      }
      
      public function get chatlogsPermission() : Boolean
      {
         return this.var_3003;
      }
      
      public function get alertPermission() : Boolean
      {
         return this.var_3006;
      }
      
      public function get kickPermission() : Boolean
      {
         return this.var_3005;
      }
      
      public function get banPermission() : Boolean
      {
         return this.var_3004;
      }
      
      public function get roomAlertPermission() : Boolean
      {
         return this.var_3007;
      }
      
      public function get roomKickPermission() : Boolean
      {
         return this.var_3001;
      }
   }
}
