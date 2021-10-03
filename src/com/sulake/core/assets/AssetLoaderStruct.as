package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_1133:IAssetLoader;
      
      private var var_2472:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         this.var_2472 = param1;
         this.var_1133 = param2;
      }
      
      public function get assetName() : String
      {
         return this.var_2472;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return this.var_1133;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(this.var_1133 != null)
            {
               if(!this.var_1133.disposed)
               {
                  this.var_1133.dispose();
                  this.var_1133 = null;
               }
            }
            super.dispose();
         }
      }
   }
}
