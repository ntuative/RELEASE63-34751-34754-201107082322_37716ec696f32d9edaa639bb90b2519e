package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_1574:Number = 12;
       
      
      private var var_2696:int = -1;
      
      private var var_2693:int = -2;
      
      private var var_224:Vector3d = null;
      
      private var var_1277:Number = 0;
      
      private var var_1564:Number = 0;
      
      private var var_1958:Boolean = false;
      
      private var var_199:Vector3d = null;
      
      private var var_1960:Vector3d;
      
      private var var_2699:Boolean = false;
      
      private var var_2697:Boolean = false;
      
      private var var_2698:Boolean = false;
      
      private var var_2700:Boolean = false;
      
      private var var_2694:int = 0;
      
      private var var_2691:int = 0;
      
      private var _scale:int = 0;
      
      private var var_2695:int = 0;
      
      private var var_2692:int = 0;
      
      private var var_1770:int = -1;
      
      private var var_1961:int = 0;
      
      private var var_1959:Boolean = false;
      
      public function RoomCamera()
      {
         this.var_1960 = new Vector3d();
         super();
      }
      
      public function get location() : IVector3d
      {
         return this.var_199;
      }
      
      public function get targetId() : int
      {
         return this.var_2696;
      }
      
      public function get targetCategory() : int
      {
         return this.var_2693;
      }
      
      public function get targetObjectLoc() : IVector3d
      {
         return this.var_1960;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return this.var_2699;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return this.var_2697;
      }
      
      public function get centeredLocX() : Boolean
      {
         return this.var_2698;
      }
      
      public function get centeredLocY() : Boolean
      {
         return this.var_2700;
      }
      
      public function get screenWd() : int
      {
         return this.var_2694;
      }
      
      public function get screenHt() : int
      {
         return this.var_2691;
      }
      
      public function get scale() : int
      {
         return this._scale;
      }
      
      public function get roomWd() : int
      {
         return this.var_2695;
      }
      
      public function get roomHt() : int
      {
         return this.var_2692;
      }
      
      public function get geometryUpdateId() : int
      {
         return this.var_1770;
      }
      
      public function get isMoving() : Boolean
      {
         if(this.var_224 != null && this.var_199 != null)
         {
            return true;
         }
         return false;
      }
      
      public function set targetId(param1:int) : void
      {
         this.var_2696 = param1;
      }
      
      public function set targetObjectLoc(param1:IVector3d) : void
      {
         this.var_1960.assign(param1);
      }
      
      public function set targetCategory(param1:int) : void
      {
         this.var_2693 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         this.var_2699 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         this.var_2697 = param1;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         this.var_2698 = param1;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         this.var_2700 = param1;
      }
      
      public function set screenWd(param1:int) : void
      {
         this.var_2694 = param1;
      }
      
      public function set screenHt(param1:int) : void
      {
         this.var_2691 = param1;
      }
      
      public function set scale(param1:int) : void
      {
         if(this._scale != param1)
         {
            this._scale = param1;
            this.var_1959 = true;
         }
      }
      
      public function set roomWd(param1:int) : void
      {
         this.var_2695 = param1;
      }
      
      public function set roomHt(param1:int) : void
      {
         this.var_2692 = param1;
      }
      
      public function set geometryUpdateId(param1:int) : void
      {
         this.var_1770 = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         var _loc2_:* = null;
         if(this.var_224 == null)
         {
            this.var_224 = new Vector3d();
         }
         if(this.var_224.x != param1.x || this.var_224.y != param1.y || this.var_224.z != param1.z)
         {
            this.var_224.assign(param1);
            this.var_1961 = 0;
            _loc2_ = Vector3d.dif(this.var_224,this.var_199);
            this.var_1277 = _loc2_.length;
            this.var_1958 = true;
         }
      }
      
      public function dispose() : void
      {
         this.var_224 = null;
         this.var_199 = null;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(this.var_199 != null)
         {
            return;
         }
         this.var_199 = new Vector3d();
         this.var_199.assign(param1);
      }
      
      public function resetLocation(param1:IVector3d) : void
      {
         if(this.var_199 == null)
         {
            this.var_199 = new Vector3d();
         }
         this.var_199.assign(param1);
      }
      
      public function update(param1:uint, param2:Number) : void
      {
         var _loc3_:* = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(this.var_224 != null && this.var_199 != null)
         {
            ++this.var_1961;
            if(this.var_1959)
            {
               this.var_1959 = false;
               this.var_199 = this.var_224;
               this.var_224 = null;
               return;
            }
            _loc3_ = Vector3d.dif(this.var_224,this.var_199);
            if(_loc3_.length > this.var_1277)
            {
               this.var_1277 = _loc3_.length;
            }
            if(_loc3_.length <= param2)
            {
               this.var_199 = this.var_224;
               this.var_224 = null;
               this.var_1564 = 0;
            }
            else
            {
               _loc4_ = Math.sin(0 * _loc3_.length / this.var_1277);
               _loc5_ = param2 * 0.5;
               _loc6_ = this.var_1277 / const_1574;
               _loc7_ = _loc5_ + (_loc6_ - _loc5_) * _loc4_;
               if(this.var_1958)
               {
                  if(_loc7_ < this.var_1564)
                  {
                     _loc7_ = this.var_1564;
                     if(_loc7_ > _loc3_.length)
                     {
                        _loc7_ = _loc3_.length;
                     }
                  }
                  else
                  {
                     this.var_1958 = false;
                  }
               }
               this.var_1564 = _loc7_;
               _loc3_.div(_loc3_.length);
               _loc3_.mul(_loc7_);
               this.var_199 = Vector3d.sum(this.var_199,_loc3_);
            }
         }
      }
      
      public function reset() : void
      {
         this.var_1770 = -1;
      }
   }
}
