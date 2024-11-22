<< HEADER
    Author: Lindsey Somwaru
    Date Last Edited: 2024-11-12 17:29:18
HEADER

#! /bin/bash
declare Plan_Number_Var="BD"

while IFS=$'\t' read -r rec_column1 rec_column2 rec_column3 
do
 
if [[ $rec_column1 == *Discipline* ]] ||  [[ -z "$rec_column1" ]];  then

# Do Nothing
Number_Var="BD"

elif [[ $rec_column1 == *BD* ]]  then
echo "INSERT INTO mrc_table(plan_number, address, max_no_review_cycles) VALUES ('$rec_column1', '$rec_column2', $rec_column3); "

	Plan_Number_Var=$rec_column1
else

echo "INSERT INTO discipline_table(plan_number, discipline, review_cycle) VALUES ('$Plan_Number_Var', '$rec_column1', $rec_column2); "

fi

done < <(tail -n +2 mrc.csv)
