
select 
    od.id 'Order Detail ID', o.id 'Order ID', o.`date` 'Order Date',
    c.id 'Customer ID', c.`name` 'Customer Name',
    e.employee_id 'Employee ID', e.first_name 'First Name', e.last_name 'Last Name',
    sh.id 'Shipper ID', sh.`name` 'Shipper Name',
    p.id 'Product ID', p.`name` 'Product Name',
    cat.id 'Category ID', cat.`name` 'Category Name',
    s.id 'Supplier ID', s.`name` 'Supplier Name',
    od.quantity 'Quantity'
from order_details od inner join orders o on (od.order_id = o.id)
	inner join customers c on (o.customer_id = c.id) inner join employees e on (o.employee_id = e.employee_id)
		inner join shippers sh on (o.shipper_id = sh.id) inner join products p on (od.product_id = p.id)
			inner join categories cat on (p.id = cat.id) inner join suppliers s on (p.id = s.id) 
                order by od.order_id;