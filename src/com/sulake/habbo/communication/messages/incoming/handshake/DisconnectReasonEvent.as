package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_2233:int = 0;
      
      public static const const_1749:int = 1;
      
      public static const const_1805:int = 2;
      
      public static const const_2262:int = 3;
      
      public static const const_2244:int = 4;
      
      public static const const_2293:int = 5;
      
      public static const const_1966:int = 10;
      
      public static const const_2310:int = 11;
      
      public static const const_2205:int = 12;
      
      public static const const_2162:int = 13;
      
      public static const const_2277:int = 16;
      
      public static const const_2150:int = 17;
      
      public static const const_2318:int = 18;
      
      public static const const_2195:int = 19;
      
      public static const const_2106:int = 20;
      
      public static const const_2202:int = 22;
      
      public static const const_2309:int = 23;
      
      public static const const_2108:int = 24;
      
      public static const const_2171:int = 25;
      
      public static const const_2177:int = 26;
      
      public static const const_2184:int = 27;
      
      public static const const_2134:int = 28;
      
      public static const const_2223:int = 29;
      
      public static const const_2112:int = 100;
      
      public static const const_2281:int = 101;
      
      public static const const_2218:int = 102;
      
      public static const const_2210:int = 103;
      
      public static const const_2270:int = 104;
      
      public static const const_2234:int = 105;
      
      public static const const_2191:int = 106;
      
      public static const const_2306:int = 107;
      
      public static const const_2201:int = 108;
      
      public static const const_2144:int = 109;
      
      public static const const_2303:int = 110;
      
      public static const const_2230:int = 111;
      
      public static const const_2148:int = 112;
      
      public static const const_2241:int = 113;
      
      public static const const_2257:int = 114;
      
      public static const const_2301:int = 115;
      
      public static const const_2175:int = 116;
      
      public static const const_2129:int = 117;
      
      public static const const_2333:int = 118;
      
      public static const const_2198:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_9 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_1749:
            case const_1966:
               return "banned";
            case const_1805:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
