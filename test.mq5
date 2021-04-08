//+------------------------------------------------------------------+
//|                                                         test.mq5 |
//|                                  Copyright 2021, MetaQuotes Ltd. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2021, MetaQuotes Ltd."
#property link      "https://www.mql5.com"
#property version   "1.00"


//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
 input int shift=0; 
  
   void OnInit () {EventSetMillisecondTimer (16);} 
   void OnTimer () 
      {
      
    MqlDateTime dt_struct;
   datetime dtSer=TimeCurrent(dt_struct);

   
      
      datetime time  = iTime(Symbol(),PERIOD_H12,shift);
      double   open  = iOpen(Symbol(),PERIOD_D1,shift);
      double   high  = iHigh(Symbol(),PERIOD_D1,shift); 
      double   low   = iLow(Symbol(),PERIOD_D1,shift); 
      double   close   = iClose(Symbol(),PERIOD_H12,shift); 
      
      double dayPrice = high - low;
    /*  Print("dayPrice: "  ,dayPrice,"\n");
       Print("dt_struct.hour: "  ,dt_struct.hour,"\n");*/
       
      if(dayPrice > 10 && dt_struct.hour > 14){
         Print("Dayprice is bigger than 10, We will open position");
         }
      else
      {
         Print("Script still not executed: Dayprice", dayPrice );
         Print("Hour: ", dt_struct.hour);
      }
       /*  
      Print( //"Time: "  ,TimeToString(time,TIME_DATE|TIME_SECONDS),"\n", 
           "Heure bougie : "  ,time,"\n",
           "Open: "  ,open,"\n", 
           "High: "  ,high,"\n", 
           "Close: "  ,close,"\n",
           "Low: "   ,low);
          */
      }


void OnStart()
  {
//---
  //Print(GetTickCount());
  OnTimer ();
  datetime server_time = TimeCurrent();
  //Print(server_time);
   MqlDateTime dt_struct;
   datetime dtSer=TimeCurrent(dt_struct);
   //printf("Server time: %d:%d:%d ; Just hours: %d ; Just minutes: %d",dt_struct.hour,dt_struct.min,dt_struct.sec,dt_struct.hour,dt_struct.min);
   

  }
//+------------------------------------------------------------------+
