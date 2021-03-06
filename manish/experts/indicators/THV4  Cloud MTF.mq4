/*
   Generated by EX4-TO-MQ4 decompiler V4.0.224.1 []
   Website: http://purebeam.biz
   E-mail : purebeam@gmail.com
*/
#property copyright "Copyright � 2009, MissPips"
#property link      "http://www.cobraforex.com"

#property indicator_separate_window
#property indicator_minimum 1.0
#property indicator_maximum 2.0
#property indicator_buffers 6
#property indicator_color1 Black
#property indicator_color2 Black
#property indicator_color3 Black
#property indicator_color4 Black
#property indicator_color5 Black
#property indicator_color6 Black

extern int MaPeriod1 = 2;
extern int MaPeriod2 = 3;
extern int MaPeriod3 = 5;
extern int BarWidth = 0;
extern color BarColorUp = Green;
extern color BarColorDown = FireBrick;
extern color BarColorInside = Orange;
extern color TextColor = Gray;
extern int tf1Positon = 2;
extern int tf2Positon = 1;
extern bool autotimeframe = TRUE;
extern int shortperiod = 5;
extern int longperiod = 15;
extern double Gap = 0.3;
extern double barHeight = 0.9;
extern bool showlabels = TRUE;
double gda_unused_148[];
double gda_unused_152[];
double gda_unused_156[];
double gda_unused_160[];
double g_ibuf_164[];
double g_ibuf_168[];
double g_ibuf_172[];
double g_ibuf_176[];
double g_ibuf_180[];
double g_ibuf_184[];
string gs_188 = "";
double g_icustom_196;
double g_icustom_204;
int gi_212 = 110;
int gi_216 = 22725;
int g_timeframe_220;
int g_timeframe_224;

int init() {
   SetIndexStyle(0, DRAW_ARROW, STYLE_SOLID, BarWidth, BarColorUp);
   SetIndexArrow(0, gi_212);
   SetIndexBuffer(0, g_ibuf_172);
   SetIndexEmptyValue(0, 0.0);
   SetIndexStyle(1, DRAW_ARROW, STYLE_SOLID, BarWidth, BarColorDown);
   SetIndexArrow(1, gi_212);
   SetIndexBuffer(1, g_ibuf_176);
   SetIndexEmptyValue(1, 0.0);
   SetIndexStyle(2, DRAW_ARROW, STYLE_SOLID, BarWidth, BarColorInside);
   SetIndexArrow(2, gi_212);
   SetIndexBuffer(2, g_ibuf_180);
   SetIndexEmptyValue(2, 0.0);
   SetIndexStyle(3, DRAW_ARROW, STYLE_SOLID, BarWidth, BarColorUp);
   SetIndexArrow(3, gi_212);
   SetIndexBuffer(3, g_ibuf_164);
   SetIndexEmptyValue(3, 0.0);
   SetIndexStyle(4, DRAW_ARROW, STYLE_SOLID, BarWidth, BarColorDown);
   SetIndexArrow(4, gi_212);
   SetIndexBuffer(4, g_ibuf_168);
   SetIndexEmptyValue(4, 0.0);
   SetIndexStyle(5, DRAW_ARROW, STYLE_SOLID, BarWidth, BarColorInside);
   SetIndexArrow(5, gi_212);
   SetIndexBuffer(5, g_ibuf_184);
   SetIndexEmptyValue(5, 0.0);
   SetIndexLabel(0, NULL);
   SetIndexLabel(1, NULL);
   SetIndexLabel(2, NULL);
   SetIndexLabel(3, NULL);
   SetIndexLabel(4, NULL);
   SetIndexLabel(5, NULL);
   IndicatorDigits(0);
   getPeriod();
   gs_188 = "THV4 MTF Cloud (" + g_timeframe_220 + "," + g_timeframe_224 + ")";
   IndicatorShortName(gs_188);
   return (0);
}

int deinit() {
   ObjectDelete("cloudtextMP");
   return (0);
}

int start() {
   string l_text_32;
   double l_price_40;
   string l_name_52;
   int lia_60[];
   int lia_64[];
   int li_76;
   int l_timeframe_80;
   int l_ind_counted_0 = IndicatorCounted();
   if (l_ind_counted_0 < 0) return (-1);
   int li_4 = Bars - l_ind_counted_0;
   double ld_16 = Time[0] - Time[1] + 120;
   for (int li_8 = ObjectsTotal() - 1; li_8 > -1; li_8--)
      if (StringFind(ObjectName(li_8), "FF_" + gi_216 + "_") >= 0) ObjectDelete(ObjectName(li_8));
   double ld_24 = 0.4;
   if (showlabels == TRUE) {
      for (int li_12 = 1; li_12 <= 2; li_12++) {
         l_text_32 = "??";
         switch (li_12) {
         case 1:
            l_text_32 = tf2txt(g_timeframe_220);
            l_price_40 = barHeight + Gap * tf1Positon + ld_24;
            break;
         case 2:
            l_text_32 = tf2txt(g_timeframe_224);
            l_price_40 = barHeight + Gap * tf2Positon + ld_24;
         }
         l_name_52 = "FF_" + gi_216 + "_" + li_12 + "_" + l_text_32;
         ObjectCreate(l_name_52, OBJ_TEXT, WindowFind(gs_188), iTime(NULL, 0, 0) + 5.0 * ld_16, l_price_40);
         ObjectSetText(l_name_52, l_text_32, 7, "Arial", TextColor);
         ObjectSet(l_name_52, OBJPROP_CORNER, 1);
         ObjectSet(l_name_52, OBJPROP_XDISTANCE, 5);
         ObjectSet(l_name_52, OBJPROP_YDISTANCE, 5);
      }
   }
   ObjectCreate("cloudtextMP", OBJ_LABEL, WindowFind(gs_188), 0, 0);
   ObjectSetText("cloudtextMP", "MTF � MissPips", 8, "Arial", DimGray);
   ObjectSet("cloudtextMP", OBJPROP_CORNER, 1);
   ObjectSet("cloudtextMP", OBJPROP_XDISTANCE, 115);
   ObjectSet("cloudtextMP", OBJPROP_YDISTANCE, 5);
   ArrayCopySeries(lia_64, 5, Symbol(), g_timeframe_220);
   ArrayCopySeries(lia_60, 5, Symbol(), g_timeframe_224);
   int l_index_68 = 0;
   int l_index_72 = 0;
   li_8 = 0;
   l_index_68 = 0;
   l_index_72 = 0;
   while (li_8 < li_4) {
      if (Time[li_8] < lia_64[l_index_68]) l_index_68++;
      if (Time[li_8] < lia_60[l_index_72]) l_index_72++;
      for (li_12 = 1; li_12 <= 2; li_12++) {
         switch (li_12) {
         case 1:
            l_timeframe_80 = g_timeframe_220;
            li_76 = l_index_68;
            break;
         case 2:
            l_timeframe_80 = g_timeframe_224;
            li_76 = l_index_72;
         }
         g_icustom_196 = iCustom(NULL, l_timeframe_80, "Ichimoku", MaPeriod1, MaPeriod2, MaPeriod3, 5, li_76);
         g_icustom_204 = iCustom(NULL, l_timeframe_80, "Ichimoku", MaPeriod1, MaPeriod2, MaPeriod3, 6, li_76);
         switch (li_12) {
         case 1:
            g_ibuf_176[li_8] = EMPTY_VALUE;
            g_ibuf_172[li_8] = EMPTY_VALUE;
            g_ibuf_180[li_8] = EMPTY_VALUE;
            if (Close[li_8] < g_icustom_196 && Close[li_8] < g_icustom_204) g_ibuf_176[li_8] = barHeight + Gap * tf1Positon;
            else {
               if (Close[li_8] > g_icustom_196 && Close[li_8] > g_icustom_204) g_ibuf_172[li_8] = barHeight + Gap * tf1Positon;
               else g_ibuf_180[li_8] = barHeight + Gap * tf1Positon;
            }
            break;
         case 2:
            g_ibuf_168[li_8] = EMPTY_VALUE;
            g_ibuf_164[li_8] = EMPTY_VALUE;
            g_ibuf_184[li_8] = EMPTY_VALUE;
            if (Close[li_8] < g_icustom_196 && Close[li_8] < g_icustom_204) g_ibuf_168[li_8] = barHeight + Gap * tf2Positon;
            else {
               if (Close[li_8] > g_icustom_196 && Close[li_8] > g_icustom_204) g_ibuf_164[li_8] = barHeight + Gap * tf2Positon;
               else g_ibuf_184[li_8] = barHeight + Gap * tf2Positon;
            }
         }
      }
      li_8++;
   }
   return (0);
}

void getPeriod() {
   if (autotimeframe) {
      switch (Period()) {
      case PERIOD_M1:
         g_timeframe_220 = 5;
         g_timeframe_224 = 15;
         return;
      case PERIOD_M5:
         g_timeframe_220 = 15;
         g_timeframe_224 = 30;
         return;
      case PERIOD_M15:
         g_timeframe_220 = 30;
         g_timeframe_224 = 60;
         return;
      case PERIOD_M30:
         g_timeframe_220 = 60;
         g_timeframe_224 = 240;
         return;
      case PERIOD_H1:
         g_timeframe_220 = 240;
         g_timeframe_224 = 1440;
         return;
      case PERIOD_H4:
         g_timeframe_220 = 1440;
         g_timeframe_224 = 10080;
         return;
      case PERIOD_D1:
         g_timeframe_220 = 10080;
         g_timeframe_224 = 43200;
         return;
      case PERIOD_W1:
         g_timeframe_220 = 43200;
         g_timeframe_224 = 43200;
         return;
      case PERIOD_MN1:
         g_timeframe_220 = 43200;
         g_timeframe_224 = 43200;
         return;
      }
   }
   g_timeframe_220 = shortperiod;
   g_timeframe_224 = longperiod;
}

string tf2txt(int ai_0) {
   if (ai_0 == 1) return ("M1");
   if (ai_0 == 5) return ("M5");
   if (ai_0 == 15) return ("M15");
   if (ai_0 == 30) return ("M30");
   if (ai_0 == 60) return ("H1");
   if (ai_0 == 240) return ("H4");
   if (ai_0 == 1440) return ("D1");
   if (ai_0 == 10080) return ("W1");
   if (ai_0 == 43200) return ("MN");
   return ("??");
}
