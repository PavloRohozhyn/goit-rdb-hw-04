select 
    count(*) 'Count'
from order_details od inner join orders o on (od.order_id = o.id)
	inner join customers c on (o.customer_id = c.id) 
	inner join employees e on (o.employee_id = e.employee_id)
	inner join shippers sh on (o.shipper_id = sh.id) 
	inner join products p on (od.product_id = p.id)
	left join categories cat on (p.id = cat.id) 
	left join suppliers s on (p.id = s.id);
-- Count is : 518
-- where  cat.id is not null and s.id is not null;
-- Count is : 36


-- "left join" перекладається як ліве зовнішнє об'єднання. 
-- Це оператор, який дозволяє об'єднати дані з двох таблиць, 
-- включаючи всі записи з лівої таблиці та відповідні записи з 
-- правої таблиці, якщо вони існують. Якщо у правій таблиці немає 
-- відповідних записів для певного запису з лівої таблиці, то 
-- для цих полів у результаті буде значення NULL.

-- тобто сама ліва таблиця (order_details, сама верхня) має 518 записів і якшо
-- не перевірити (відфільтрувати) на null у нас у вибірці будуть строки з 
-- нульовими значеннями (див where)

