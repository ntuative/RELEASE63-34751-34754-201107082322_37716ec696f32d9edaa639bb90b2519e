package com.sulake.habbo.communication.encryption
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.communication.handshake.IKeyExchange;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_978:BigInteger;
      
      private var var_2708:BigInteger;
      
      private var var_1964:BigInteger;
      
      private var var_2709:BigInteger;
      
      private var var_1565:BigInteger;
      
      private var var_1963:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1565 = param1;
         this.var_1963 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1565.toString() + ",generator: " + this.var_1963.toString() + ",secret: " + param1);
         this.var_978 = new BigInteger();
         this.var_978.fromRadix(param1,param2);
         this.var_2708 = this.var_1963.modPow(this.var_978,this.var_1565);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_1964 = new BigInteger();
         this.var_1964.fromRadix(param1,param2);
         this.var_2709 = this.var_1964.modPow(this.var_978,this.var_1565);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2708.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2709.toRadix(param1);
      }
   }
}
