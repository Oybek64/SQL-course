1.    select id,
          ltrim(rtrim(substring(name, 1, charindex(',', name) - 1))) as Name,
		      ltrim(rtrim(substring(Name, charindex(',', name) + 1, len(name)))) as Surname
		  from testmultiplecolumns;

2. select * from testpercent
where strs like '%[%]%';

3. 
