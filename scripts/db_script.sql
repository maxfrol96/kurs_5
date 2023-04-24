create table companies
(
	company_id int primary key,
	company_name varchar unique not null
);

create table vacancies
(
	vacancy_id serial primary key,
	vacancy_name text not null,
	salary int,
	company_name text not null,
	vacancy_url varchar not null
);

alter table vacancies add constraint fk_company_name foreign key(company_name) references companies(company_name)