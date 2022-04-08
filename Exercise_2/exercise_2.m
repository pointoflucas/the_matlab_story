% exercise_2
clear all
clc

% Input Block
day = input('Enter the day (from 1 to 30): ');
month = input('Enter the month (from 1 to 12): ');
year = input('Enter the year : ');

ref_day = 7;
ref_month = 3;
ref_year = 2022;

diff_day = day-ref_day;
diff_month = month-ref_month;
diff_year = year-ref_year;

total_difference_day = diff_day*1 + diff_month*30 + diff_year*360;
difference_mod = mod(total_difference_day,7);

% Assigning weekdays according to the difference_mod values
if difference_mod == 0
    the_day = 'Monday';
elseif difference_mod == 1
    the_day = 'Tuesday';   
elseif difference_mod == 2
    the_day = 'Wednesday';      
elseif difference_mod == 3
    the_day = 'Thursday';  
elseif difference_mod == 4
    the_day = 'Friday';  
elseif difference_mod == 5
    the_day = 'Saturday';  
elseif difference_mod == 6
    the_day = 'Sunday';  
end

if total_difference_day < 0
    total_day = 0 - total_difference_day;
    diff_year_modified = floor(total_day/360);
    total_day = total_day - diff_year_modified*360;
    diff_month_modified = floor(total_day/30);
    total_day = total_day - diff_month_modified*30;
    diff_day_modified = total_day;
else
    total_day = 0 - total_difference_day;
    diff_year_modified = floor(total_day/360);
    total_day = total_day - diff_year_modified*360;
    diff_month_modified = floor(total_day/30);
    total_day = total_day - diff_month_modified*30;
    diff_day_modified = total_day;
end

% Printing results
fprintf('It is %s.\n',the_day);
fprintf('The difference between 7.3.2022 and %d.%d.%d is %d year(s) %d month(s) %d day(s).\n',day,month,year,diff_year_modified,diff_month_modified,diff_day_modified)
