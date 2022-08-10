use employees;
select *from titles
where to_date is null;

select * from titles
where to_date is not null;

use information_schema;
select *from information_schema.PLUGINS;

select *from information_schema.PLUGINS
where PLUGIN_LIBRARY is null;

select *from information_schema.PLUGINS
where PLUGIN_LIBRARY is not null;

