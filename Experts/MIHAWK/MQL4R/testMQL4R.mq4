#property copyright     "Mihawk, Accretion Investment Corporation"
#property link          "http:// "
#property version       "0.001"
#property description   "  "

#property strict

#define RPATH   "D:/SOFTWARE/PROGRAMMING/Microsoft/MRO-3.3.2/bin/x64/Rterm.exe"
//+1--2--3--4--5--6--7--8--9--0--1--2--3--4--5--6--7--8--9--+
//+	头文件 - 包含文件
//+1--2--3--4--5--6--7--8--9--0--1--2--3--4--5--6--7--8--9--+
#include <\MIHAWK\MQL4R\MQL4R.mqh>
//+1--2--3--4--5--6--7--8--9--0--1--2--3--4--5--6--7--8--9--0--1--2--3--4--5--6--7--8--9--0--1--2--3--4--5--6--7--8--9--0--1--2--3--4--5--6--7--8--9--+
//+	EA:   testR
//+	test MQL4R functions
//+	Version: 0.1
//+	Update:  
//+1--2--3--4--5--6--7--8--9--0--1--2--3--4--5--6--7--8--9--0--1--2--3--4--5--6--7--8--9--0--1--2--3--4--5--6--7--8--9--0--1--2--3--4--5--6--7--8--9--+
C_MQL4R  R;
//+1--2--3--4--5--6--7--8--9--0--1--2--3--4--5--6--7--8--9--+
//+	ExpertAdvisor - 初始化函数
//+1--2--3--4--5--6--7--8--9--0--1--2--3--4--5--6--7--8--9--+
int OnInit() {
//>>  init check
   if (!IsDllsAllowed()) {
      MessageBox("You need to turn on \'Allow DLL imports\'");
   }
   if (!IsTradeAllowed()) {
      Alert("Trading forbidden!");
   }
//>>  start R
   R.Start(RPATH);
//>>  test R functions
	Print(R.IsRunning());
//>>  test GetI()
   printf("%s = %i", "1 + 1", R.GetI("1 + 1"));
//>>  test GetB()
   printf("%s = %i", "1 > 1", R.GetB("1 > 1"));
   
   return INIT_SUCCEEDED;
}
//+1--2--3--4--5--6--7--8--9--0--1--2--3--4--5--6--7--8--9--+
//+	ExpertAdvisor - 反初始化函数
//+1--2--3--4--5--6--7--8--9--0--1--2--3--4--5--6--7--8--9--+
void     OnDeinit (
            const int      reason
         ) {
//>>  stop R  
   R.Stop();
}
//+1--2--3--4--5--6--7--8--9--0--1--2--3--4--5--6--7--8--9--+
//+	ExpertAdvisor - 运行函数
//+1--2--3--4--5--6--7--8--9--0--1--2--3--4--5--6--7--8--9--+
void     OnTick() {
   
}
//+1--2--3--4--5--6--7--8--9--0--1--2--3--4--5--6--7--8--9--+
//+	ExpertAdvisor - 图表事件函数
//+1--2--3--4--5--6--7--8--9--0--1--2--3--4--5--6--7--8--9--+
void     OnChartEvent (
            const int      id,
            const long    &lparam,
            const double  &dparam,
            const string  &sparam
         ) {
   
}
//+1--2--3--4--5--6--7--8--9--0--1--2--3--4--5--6--7--8--9--+
//+	ExpertAdvisor - 计时器函数                            +
//+1--2--3--4--5--6--7--8--9--0--1--2--3--4--5--6--7--8--9--+
void     OnTimer() {
   
}
