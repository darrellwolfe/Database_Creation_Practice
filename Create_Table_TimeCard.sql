Create Table TIMECard (
TIMECardId INT Primary Key,
Date_Worked DATE Not Null,
TIMEStart TIME Not Null, -- Before Lunch
LunchStart TIME Not Null,
LunchEnd TIME Not Null, -- After Lunch
TIMEOver TIME Not Null,
AddTIMEStart TIME Not Null, -- Possible OverTIME
AddTIMEOver TIME Not Null
);