#List number of films per category.

select c.name, count(f.film_id) as FilmsPerCat
from category as c
join film_category as f
on c.category_id=f.category_id
group by c.name
order by FilmsPerCat asc;


#Display the first and last names, as well as the address, of each staff member.
select s.first_name, s.last_name,a.address
from staff as s
join address as a
on a.address_id = s.address_id;


#Display the total amount rung up by each staff member in August of 2005.


select s.last_name, sum(p.amount)
from staff as s
join payment as p
on s.staff_id =p.staff_id
where date_format(convert(p.payment_date,date),"%Y-%M") = "2005-August"
group by s.last_name;


#List each film and the number of actors who are listed for that film.
select f.title, count(a.actor_id) as NrOfActor
from film as f
join film_actor as a
on f.film_id = a.film_id
group by f.title;

#Using the tables payment and customer and the JOIN command,
#list the total paid by each customer.   List the customers alphabetically by last name.

select c.customer_id,c.last_name, sum(p.amount)
from customer as c
join payment as p
on c.customer_id=p.customer_id
group by customer_id
order by last_name
;



