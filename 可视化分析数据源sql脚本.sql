-- 不同年龄段中患者脱发的⽐例是多少？
select 
	a.ageGroup 年龄分组,count(*) 数量,sum(a.hair_loss) 脱发数量, round((sum(a.hair_loss)/count(*))*100,2) 脱发占比
from (
select 
	*,case 
	when age<=18 then '0~18'
	when age<30 then '19~29'
	when age<40 then '30~39'
	else '40以上'
	end ageGroup
from hair_origin_data
) a 
group by
	a.ageGroup
order by 
	a.ageGroup;
-- 不同压⼒⽔平下脱发的情况如何？
select 
	stress 压力分类,count(*) 压力总数,sum(hair_loss) 脱发数量,round((sum(hair_loss)/count(*))*100,2) 脱发占比
from 
	hair_origin_data
group by 
	stress;
-- 哪些因素与脱发之间存在关联？
-- 上述证明 压力、年龄与脱发均无关系
-- 家族秃头史
select 
	genetics 家族史秃头分类,count(*) 总数,sum(hair_loss) 脱发数量,round((sum(hair_loss)/count(*))*100,2) 脱发占比
from 
	hair_origin_data
group by 
	genetics;
-- 荷尔蒙变化
select 
	hormonal_changes 荷尔蒙是否变化分类,count(*) 总数,sum(hair_loss) 脱发数量,round((sum(hair_loss)/count(*))*100,2) 脱发占比
from 
	hair_origin_data
group by 
	hormonal_changes;
-- 秃头病史
select 
	medical_conditions 秃头病史分类,count(*) 总数,sum(hair_loss) 脱发数量,round((sum(hair_loss)/count(*))*100,2) 脱发占比
from 
	hair_origin_data
where 
	medical_conditions!='No Data'
group by 
	medical_conditions;
-- 药物治疗史
select 
	medications_treatments 药物治疗史分类,count(*) 总数,sum(hair_loss) 脱发数量,round((sum(hair_loss)/count(*))*100,2) 脱发占比
from 
	hair_origin_data
where 
	medications_treatments!='No Data'
group by 
	medications_treatments;
-- 营养不足
select 
	nutritional_deficiencies 营养是否不足分类,count(*) 总数,sum(hair_loss) 脱发数量,round((sum(hair_loss)/count(*))*100,2) 脱发占比
from 
	hair_origin_data
where 
	nutritional_deficiencies!='No Data'
group by 
	nutritional_deficiencies;
-- 不良护发习惯
select 
	poor_hair_care_habits 是否不良护发习惯分类,count(*) 总数,sum(hair_loss) 脱发数量,round((sum(hair_loss)/count(*))*100,2) 脱发占比
from 
	hair_origin_data
group by 
	poor_hair_care_habits;
-- 暴露脱发环境
select 
	environmental_factors 是否暴露脱发环境分类,count(*) 总数,sum(hair_loss) 脱发数量,round((sum(hair_loss)/count(*))*100,2) 脱发占比
from 
	hair_origin_data
group by 
	environmental_factors;
-- 吸烟
select 
	smoking 是否吸烟分类,count(*) 总数,sum(hair_loss) 脱发数量,round((sum(hair_loss)/count(*))*100,2) 脱发占比
from 
	hair_origin_data
group by 
	smoking;
-- 显著体重减轻
select 
	weight_loss 是否显著体重减轻分类,count(*) 总数,sum(hair_loss) 脱发数量,round((sum(hair_loss)/count(*))*100,2) 脱发占比
from 
	hair_origin_data
group by 
	weight_loss;