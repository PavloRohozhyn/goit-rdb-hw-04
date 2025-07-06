select
    cat.`name` 'Category Name',
    COUNT(*) 'Count',
    AVG(od.quantity) 'avgq'
from order_details od inner join orders o on (od.order_id = o.id)
	inner join customers c on (o.customer_id = c.id) inner join employees e on (o.employee_id = e.employee_id)
		inner join shippers sh on (o.shipper_id = sh.id) inner join products p on (od.product_id = p.id)
			inner join categories cat on (p.id = cat.id) inner join suppliers s on (p.id = s.id) 
where e.employee_id between 3 and 10 
group by cat.`name`
having avgq > 21;



