-- 1. **`employees 테이블을 생성해주세요`**
--    - `속성명 **id의** 자료형은 INT입니다. 추가로 자동으로 1씩 증가하도록 설정하고 기본키로 지정합니다.`
--    - `속성명 **name의** 자료형은 VARCHAR(100)입니다.`
--    - `속성명 **position의** 자료형은 VARCHAR(100)입니다.`
--    - `속성명 **salary의** 자료형은 DECIMAL(10, 2)7입니다.`
create table employees(
	id int primary key auto_increment,
    name varchar(100),
    position varchar(100),
    salary decimal(10, 2)
);

-- 1. **직원 데이터를 `employees`에 추가해주세요**
--    - 이름: 혜린, 직책: PM, 연봉: 90000
--    - 이름: 은우, 직책: Frontend, 연봉: 80000
--    - 이름: 가을, 직책: Backend, 연봉: 92000
--    - 이름: 지수, 직책: Frontend, 연봉: 78000
--    - 이름: 민혁, 직책: Frontend, 연봉: 96000
--    - 이름: 하온, 직책: Backend, 연봉: 130000
insert into employees (name, position, salary) values ('혜린', 'PM', 90000);
insert into employees (name, position, salary) values ('은우', 'Frontend', 80000);
insert into employees (name, position, salary) values ('가을', 'Backend', 92000);
insert into employees (name, position, salary) values ('자수', 'Frontend', 78000);
insert into employees (name, position, salary) values ('민혁', 'Frontend', 96000);
insert into employees (name, position, salary) values ('하온', 'Backend', 130000);