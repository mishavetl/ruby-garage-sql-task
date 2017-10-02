select distinct `status` from tasks order by `status` asc;
select *, (select count(*) from tasks ts where ts.project_id = pr.id) tasks_amount from projects pr order by tasks_amount desc;
select *, (select count(*) from tasks ts where ts.project_id = pr.id) tasks_amount from projects pr order by pr.name;
select * from tasks where project_id in (select id from projects where name like 'N%');
select *, (select count(*) from tasks ts where ts.project_id = pr.id) tasks_amount from projects pr where name like '%a%';
select name, count(*) `count` from tasks group by name having `count` > 1 order by name;
select name, `status`, count(*) `count` from tasks group by name, `status` having `count` > 1 order by `count`;
select name from projects pr where (select count(*) from tasks ts where pr.id = ts.project_id and `status` = true) >= 10 order by id;
