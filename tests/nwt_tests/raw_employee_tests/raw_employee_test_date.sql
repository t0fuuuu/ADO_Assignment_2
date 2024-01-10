with
employee as (
    select * from {{ ref('raw_employee') }}
)

SELECT * FROM employee
WHERE hireDate > birthDate