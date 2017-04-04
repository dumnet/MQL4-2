// test function: FileFindFirst()
// result: only support for /MQL4/Files Folder; not support for C:\\ usw.


//+------------------------------------------------------------------+
//|                                                     study001.mq4 |
//|                        Copyright 2017, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2017, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict

input string InpFilter="C:\\*";
//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
int OnInit()
  {
//---
   string file_name; 
   int    i=1; 
//--- receive search handle in local folder's root 
   long search_handle=FileFindFirst(InpFilter,file_name); 
//--- check if FileFindFirst() function executed successfully 
   if(search_handle!=INVALID_HANDLE) 
     { 
      //--- check if the passed strings are file or directory names in the loop 
      do 
        { 
         ResetLastError(); 
         //--- if this is a file, the function will return true, if it is a directory, the function will generate error ERR_FILE_IS_DIRECTORY 
         FileIsExist(file_name); 
         PrintFormat("%d : %s name = %s",i,GetLastError()==ERR_FILE_IS_DIRECTORY ? "Directory" : "File",file_name); 
         i++; 
        } 
      while(FileFindNext(search_handle,file_name)); 
      //--- close search handle 
      FileFindClose(search_handle); 
     } 
   else 
      Print("Files not found!"); 


//---
   return(INIT_SUCCEEDED);
  }
//+------------------------------------------------------------------+
//| Expert deinitialization function                                 |
//+------------------------------------------------------------------+
void OnDeinit(const int reason)
  {
//---
   
  }
//+------------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+
void OnTick()
  {
//---
   
  }
//+------------------------------------------------------------------+
