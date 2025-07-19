create database CHURN_DB;

use CHURN_DB;

# count(gender) and count(*) both are integer so i will get only integer i will not receive float so we will multiply by 100.0 so the count(gender) gets converted into float

select Gender,count(Gender) as total_count,
count(Gender)*100.0/(select count(*) from stg_churn) as precentage
from stg_churn
group by Gender;


select Contract,count(Contract) as total_count,
count(Contract)* 100.0 / (select count(*) from stg_churn) as percenatge
from stg_churn
group by Contract;

select * from stg_churn;

select Customer_Status, count(customer_status) as count,
sum(total_revenue) as TotalRev,
sum(total_revenue)/(select sum(total_revenue) from stg_churn )* 100.0 as RevPercentage
from stg_churn
group by Customer_Status;

select state,count(state) as count,
count(state)*100.0/ (select count(*) from stg_churn) as percentage
from stg_churn
group by state
order by percentage desc;

select distinct internet_type 
from stg_churn;

select 
count(*) as total_rows,count(customer_id) as nonNULL_id ,
count(*)-count(customer_id) as NULL_id
from stg_churn;

SELECT
sum(CASE WHEN  gender  IS NULL then 1 else 0 end) as NULL_gender
FROM stg_churn;


SELECT
sum(CASE WHEN  age  IS NULL then 1 else 0 end) as NULL_age,
sum(CASE WHEN  married  IS NULL then 1 else 0 end) as NULL_married,
sum(CASE WHEN  state  IS NULL then 1 else 0 end) as NULL_state,
SUM(CASE WHEN  Number_of_Referrals  IS NULL THEN 1 ELSE 0 END)AS Number_of_Referrals_NULL_Count,
SUM(CASE WHEN  Tenure_in_Months  IS NULL THEN 1 ELSE 0 END)AS Tenure_in_Months_NULL_Count,
SUM(CASE WHEN  Value_Deal  IS NULL THEN 1 ELSE 0 END)AS Value_Deal_NULL_Count,
SUM(CASE WHEN  Phone_Service  IS NULL THEN 1 ELSE 0 END)AS Phone_Service_NULL_Count,
SUM(CASE WHEN  Multiple_Lines  IS NULL THEN 1 ELSE 0 END)AS Multiple_Lines_NULL_Count,
SUM(CASE WHEN  Internet_Service  IS NULL  THEN 1 ELSE 0 END)AS Internet_Service_NULL_Count,
SUM(CASE WHEN  Internet_Type  IS NULL THEN 1 ELSE 0 END)AS Internet_Type_NULL_Count,
SUM(CASE WHEN  Online_Security  IS NULL THEN 1 ELSE 0 END)AS Online_Security_NULL_Count,
SUM(CASE WHEN  Online_Backup  IS NULL THEN 1 ELSE 0 END)AS Online_Backup_NULL_Count,
SUM(CASE WHEN  Device_Protection_Plan  IS NULL THEN 1 ELSE 0 END)AS Device_Protection_Plan_NULL_Count,
SUM(CASE WHEN  Premium_Support  IS NULL THEN 1 ELSE 0 END)AS Premium_Support_NULL_Count,
SUM(CASE WHEN  Streaming_TV  IS NULL THEN 1 ELSE 0 END)AS Streaming_TV_NULL_Count,
SUM(CASE WHEN  Streaming_Movies  IS NULL  THEN 1 ELSE 0 END)AS Streaming_Movies_NULL_Count,
SUM(CASE WHEN Streaming_Music IS NULL THEN 1 ELSE 0 END)AS Streaming_Music_NULL_Count,
SUM(CASE WHEN Unlimited_Data IS NULL THEN 1 ELSE 0 END)AS Unlimited_Data_NULL_Count,
SUM(CASE WHEN Contract IS NULL THEN 1 ELSE 0 END)AS Contract_NULL_Count,
SUM(CASE WHEN Paperless_Billing IS NULL THEN 1 ELSE 0 END)AS Paperless_Billing_NULL_Count,
SUM(CASE WHEN  Payment_Method IS NULL THEN 1 ELSE 0 END)AS Payment_Method_NULL_Count,
SUM(CASE WHEN Monthly_Charge IS NULL THEN 1 ELSE 0 END)AS Monthly_Charge_NULL_Count,
SUM(CASE WHEN Total_Charges IS NULL THEN 1 ELSE 0 END)AS Total_Charges_NULL_Count,
SUM(CASE WHEN Total_Refunds IS NULL THEN 1 ELSE 0 END)AS Total_Refunds_NULL_Count,
SUM(CASE WHEN Total_Extra_Data_Charges IS NULL THEN 1 ELSE 0 END)AS Total_Extra_Data_Charges_NULL_Count,
SUM(CASE WHEN Total_Long_DIStance_Charges IS NULL THEN 1 ELSE 0 END)AS Total_Long_DIStance_Charges_NULL_Count,
SUM(CASE WHEN Total_Revenue IS NULL THEN 1 ELSE 0 END)AS Total_Revenue_NULL_Count,
SUM(CASE WHEN Customer_Status IS NULL THEN 1 ELSE 0 END)AS Customer_Status_NULL_Count,
SUM(CASE WHEN Churn_Category IS NULL THEN 1 ELSE 0 END)AS Churn_Category_NULL_Count,
SUM(CASE WHEN Churn_Reason IS NULL THEN 1 ELSE 0 END)AS Churn_Reason_NULL_Count
FROM stg_Churn;


SELECT
Customer_ID,
    Gender,
    Age,
    Married,
State,
Number_of_Referrals,
Tenure_in_Months,
ISNULL(Value_Deal,'None')AS Value_Deal,
Phone_Service,
ISNULL(Multiple_Lines,'No')As Multiple_Lines,
Internet_Service,
ISNULL(Internet_Type,'None')AS Internet_Type,
ISNULL(Online_Security,'No')AS Online_Security,
ISNULL(Online_Backup,'No')AS Online_Backup,
ISNULL(Device_Protection_Plan,'No')AS Device_Protection_Plan,
ISNULL(Premium_Support,'No')AS Premium_Support,
ISNULL(Streaming_TV,'No')AS Streaming_TV,
ISNULL(Streaming_Movies,'No')AS Streaming_Movies,
ISNULL(Streaming_Music,'No')AS Streaming_Music,
ISNULL(Unlimited_Data,'No')AS Unlimited_Data,
Contract,
Paperless_Billing,
Payment_Method,
Monthly_Charge,
Total_Charges,
Total_Refunds,
Total_Extra_Data_Charges,
Total_Long_Distance_Charges,
Total_Revenue,
Customer_Status,
ISNULL(Churn_Category,'Others')AS Churn_Category,
ISNULL(Churn_Reason,'Others')AS Churn_Reason

INTO [CHURN_DB].[dbo].[prod_Churn]
FROM [CHURN_DB].[dbo].[stg_churn];

Create view vw_churndata as
 select * from prod_churn where Customer_Status IN ('Churned','Stayed');

create view vw_joindata as 
  select * from prod_churn where Customer_Status ='Joined';






