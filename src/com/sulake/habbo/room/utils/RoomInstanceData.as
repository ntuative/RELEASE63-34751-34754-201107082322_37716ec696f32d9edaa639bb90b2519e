package com.sulake.habbo.room.utils
{
   import com.sulake.core.utils.Map;
   
   public class RoomInstanceData
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_909:TileHeightMap = null;
      
      private var var_1391:LegacyWallGeometry = null;
      
      private var var_1390:RoomCamera = null;
      
      private var var_908:SelectedRoomObjectData = null;
      
      private var var_910:SelectedRoomObjectData = null;
      
      private var _worldType:String = null;
      
      private var var_600:Map;
      
      private var var_599:Map;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         this.var_600 = new Map();
         this.var_599 = new Map();
         super();
         this._roomId = param1;
         this._roomCategory = param2;
         this.var_1391 = new LegacyWallGeometry();
         this.var_1390 = new RoomCamera();
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return this.var_909;
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(this.var_909 != null)
         {
            this.var_909.dispose();
         }
         this.var_909 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return this.var_1391;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return this.var_1390;
      }
      
      public function get worldType() : String
      {
         return this._worldType;
      }
      
      public function set worldType(param1:String) : void
      {
         this._worldType = param1;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return this.var_908;
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_908 != null)
         {
            this.var_908.dispose();
         }
         this.var_908 = param1;
      }
      
      public function get placedObject() : SelectedRoomObjectData
      {
         return this.var_910;
      }
      
      public function set placedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_910 != null)
         {
            this.var_910.dispose();
         }
         this.var_910 = param1;
      }
      
      public function dispose() : void
      {
         if(this.var_909 != null)
         {
            this.var_909.dispose();
            this.var_909 = null;
         }
         if(this.var_1391 != null)
         {
            this.var_1391.dispose();
            this.var_1391 = null;
         }
         if(this.var_1390 != null)
         {
            this.var_1390.dispose();
            this.var_1390 = null;
         }
         if(this.var_908 != null)
         {
            this.var_908.dispose();
            this.var_908 = null;
         }
         if(this.var_910 != null)
         {
            this.var_910.dispose();
            this.var_910 = null;
         }
         if(this.var_600 != null)
         {
            this.var_600.dispose();
            this.var_600 = null;
         }
         if(this.var_599 != null)
         {
            this.var_599.dispose();
            this.var_599 = null;
         }
      }
      
      public function addFurnitureData(param1:FurnitureData) : void
      {
         if(param1 != null)
         {
            this.var_600.remove(param1.id);
            this.var_600.add(param1.id,param1);
         }
      }
      
      public function getFurnitureData() : FurnitureData
      {
         if(this.var_600.length > 0)
         {
            return this.getFurnitureDataWithId(this.var_600.getKey(0));
         }
         return null;
      }
      
      public function getFurnitureDataWithId(param1:int) : FurnitureData
      {
         return this.var_600.remove(param1);
      }
      
      public function addWallItemData(param1:FurnitureData) : void
      {
         if(param1 != null)
         {
            this.var_599.remove(param1.id);
            this.var_599.add(param1.id,param1);
         }
      }
      
      public function getWallItemData() : FurnitureData
      {
         if(this.var_599.length > 0)
         {
            return this.getWallItemDataWithId(this.var_599.getKey(0));
         }
         return null;
      }
      
      public function getWallItemDataWithId(param1:int) : FurnitureData
      {
         return this.var_599.remove(param1);
      }
   }
}
