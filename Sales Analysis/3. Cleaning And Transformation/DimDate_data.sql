SELECT 
  [DateKey], 
  [FullDateAlternateKey] As Date, 
  --[DayNumberOfWeek]
  [EnglishDayNameOfWeek] As Day, 
  --[SpanishDayNameOfWeek]
  --[FrenchDayNameOfWeek],
  [DayNumberOfMonth] As MonthNo, 
  --[DayNumberOfYear]
  --[WeekNumberOfYear],
  [EnglishMonthName] As Month, 
  left([EnglishMonthName], 3) As Monthshort, 
  --[SpanishMonthName]
  --[FrenchMonthName],
  [MonthNumberOfYear] As MonthNo, 
  [CalendarQuarter] As Quarter, 
  [CalendarYear] As Year
  --[CalendarSemester],
  --[FiscalQuarter],
  --[FiscalYear],
  --[FiscalSemester]
from 
  DimDate 
where 
  CalendarYear >= 2019
