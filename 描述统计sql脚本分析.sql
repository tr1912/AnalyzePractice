-- 求平均年龄
select round(avg(age), 2) from hair_origin_data;

-- 年龄分布
select 
	a.ageGroup,count(*) 数量
from (
select 
	*,case 
	when age<=18 then '0~18'
	when age<30 then '19~29'
	when age<40 then '30~39'
	when age<50 then '40~49'
	else '50以上'
	end ageGroup
from hair_origin_data
) a 
group by
	a.ageGroup
order by 
	a.ageGroup;
-- 哪些医疗条件是最常⻅的？它们的发⽣频率是多少？
-- 药物治疗史
select 
	medications_treatments,count(*) num
from
	hair_origin_data
where 
	medications_treatments!='No Data'
group by
	medications_treatments
order by
	num desc;
-- 病史
select 
	medical_conditions,count(*) num
from
	hair_origin_data
where 
	medical_conditions!='No Data'
group by
	medical_conditions
order by
	num desc;
-- 营养缺乏的种类及其出现频率如何？
select 
	nutritional_deficiencies,count(*) num
from
	hair_origin_data
where 
	nutritional_deficiencies!='No Data'
group by
	nutritional_deficiencies
order by
	num desc;