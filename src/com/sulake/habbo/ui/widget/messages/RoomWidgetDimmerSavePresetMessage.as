package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_1018:String = "RWSDPM_SAVE_PRESET";
       
      
      private var var_2642:int;
      
      private var var_2643:int;
      
      private var _color:uint;
      
      private var var_1333:int;
      
      private var var_2935:Boolean;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_1018);
         this.var_2642 = param1;
         this.var_2643 = param2;
         this._color = param3;
         this.var_1333 = param4;
         this.var_2935 = param5;
      }
      
      public function get presetNumber() : int
      {
         return this.var_2642;
      }
      
      public function get effectTypeId() : int
      {
         return this.var_2643;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function get brightness() : int
      {
         return this.var_1333;
      }
      
      public function get apply() : Boolean
      {
         return this.var_2935;
      }
   }
}
