package com.sulake.habbo.friendbar.view.utils
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.components.ITextWindow;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   
   public class TextCropper implements IDisposable
   {
       
      
      private var _disposed:Boolean = false;
      
      private var var_527:TextField;
      
      private var var_957:TextFormat;
      
      private var var_3070:String = "...";
      
      private var var_3071:int = 20;
      
      public function TextCropper()
      {
         super();
         this.var_527 = new TextField();
         this.var_527.autoSize = TextFieldAutoSize.LEFT;
         this.var_957 = this.var_527.defaultTextFormat;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this.var_527 = null;
            this._disposed = true;
         }
      }
      
      public function crop(param1:ITextWindow) : void
      {
         var _loc3_:int = 0;
         this.var_957.font = param1.fontFace;
         this.var_957.size = param1.fontSize;
         this.var_957.bold = param1.bold;
         this.var_957.italic = param1.italic;
         this.var_527.setTextFormat(this.var_957);
         this.var_527.text = param1.getLineText(0);
         var _loc2_:int = this.var_527.textWidth;
         if(_loc2_ > param1.width)
         {
            _loc3_ = this.var_527.getCharIndexAtPoint(param1.width - this.var_3071,this.var_527.textHeight / 2);
            param1.text = param1.text.slice(0,_loc3_) + this.var_3070;
         }
      }
   }
}
