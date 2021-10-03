package com.sulake.habbo.avatar.actions
{
   public class ActiveActionData implements IActiveActionData
   {
       
      
      private var var_1990:String = "";
      
      private var _actionParameter:String = "";
      
      private var var_1307:IActionDefinition;
      
      private var var_2764:int = 0;
      
      private var var_2765:String;
      
      public function ActiveActionData(param1:String, param2:String = "", param3:int = 0)
      {
         super();
         this.var_1990 = param1;
         this._actionParameter = param2;
         this.var_2764 = param3;
      }
      
      public function get actionType() : String
      {
         return this.var_1990;
      }
      
      public function get actionParameter() : String
      {
         return this._actionParameter;
      }
      
      public function get definition() : IActionDefinition
      {
         return this.var_1307;
      }
      
      public function get id() : String
      {
         if(this.var_1307 == null)
         {
            return "";
         }
         return this.var_1307.id + "_" + this._actionParameter;
      }
      
      public function set actionParameter(param1:String) : void
      {
         this._actionParameter = param1;
      }
      
      public function set definition(param1:IActionDefinition) : void
      {
         this.var_1307 = param1;
      }
      
      public function dispose() : void
      {
         this.var_1990 = null;
         this._actionParameter = null;
         this.var_1307 = null;
      }
      
      public function get startFrame() : int
      {
         return this.var_2764;
      }
      
      public function get overridingAction() : String
      {
         return this.var_2765;
      }
      
      public function set overridingAction(param1:String) : void
      {
         this.var_2765 = param1;
      }
   }
}
