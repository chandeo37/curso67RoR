select * from billing;
select * from clients;
select * from leads;
select * from sites;
select clients.first_name, clients.last_name, billing.amount, billing.charged_datetime
from clients
JOIN billing ON clients_id = billing.clients_id;

SELECT sites.domain_name, leads.first_name, leads.last_name
FROM sites
JOIN leads ON sites.id = leads.sites_id;

SELECT clients.first_name AS client_first, clients.last_name, sites.domain_name, leads.first_name AS leads_first
FROM clients
JOIN sites ON clients_id= sites.clients_id
JOIN leads ON sites_id = leads.sites_id;

SELECT clients.first_name, clients.last_name, sites.domain_name
FROM clients
LEFT JOIN sites ON clients.id=sites.clients_id;

SELECT clients.first_name, clients.last_name, SUM(billing.amount)
FROM clients
JOIN billing ON clients.id=billing.clients_id
group by clients_id;

SELECT group_concat(sites.domain_name) as dominios, clients.first_name, clients.last_name
FROM clients
JOIN sites ON clients.id=sites.clients_id
group by clients.id;

SELECT count(leads.id), sites.domain_name
FROM sites
JOIN leads ON sites.id= leads.sites_id
group by sites.id;

SELECT * FROM customers 
JOIN addresses ON addresses.id = customers.address_id;

-- nombre de los clientes
SELECT * FROM billing JOIN clients ON billing.clients_id = clients.id;
SELECT * FROM billing JOIN clients ON billing.clients_id = clients.id ORDER BY clients.id;
SELECT sum(amount), clients.id, clients.first_name, clients.last_name, clients.email 
FROM billing
JOIN clients ON 
billing.clients_id = clients.id
group by clients.id;

SELECT * FROM customers 
JOIN addresses ON addresses.id = customers.address_id;
-- historico de factura
SELECT * FROM billing;
-- mostrar el nombre del cliente
SELECT * FROM billing
JOIN clients ON billing.clients_id = clients.id;
-- clientes ordenados por nombre
SELECT * FROM billing
JOIN clients ON billing.clients_id = clients.id 
ORDER BY clients.id;
-- suma de las facturas de un mismo cliente

SELECT sum(amount), clients.id, clients.first_name, clients.last_name, clients.email FROM billing
JOIN clients ON billing.clients_id = clients.id 
GROUP BY clients.id;

-- cuenta la cantidad de factura

SELECT sum(amount), clients.id, clients.first_name, clients.last_name, clients.email FROM billing
JOIN clients ON billing.clients_id = clients.id 
GROUP BY clients.id;
-- cuenta la cantidad de facturas por cliente
SELECT sum(amount), count(*), clients.id, clients.first_name, clients.last_name, clients.email FROM billing
JOIN clients ON billing.clients_id = clients.id 
GROUP BY clients.id;

SELECT sum(amount) as Total, count(*) as Num_transacciones, clients.id, clients.first_name, clients.last_name, clients.email FROM billing
JOIN clients ON billing.clients_id = clients.id 
GROUP BY clients.id;
use twitter;

select * from users;
select * from faves;
select * from tweets;
select * from follows;
-- filtro por campo
-- us es un alias
select id,first_name, last_name from users;

select users.id, users.first_name, users.last_name from users;
-- alias
select us.id, us.first_name, us.last_name from users us;

-- condiciones

select us.id, us.first_name, us.last_name from users us
where us.id=3;

-- OR uno o el otro si existen se traen los dos
select us.id, us.first_name, us.last_name from users us
where us.id=3 or us.id=1;
-- entre
select us.id, us.first_name, us.last_name from users us
where us.id in (1,3);

-- LIKE algun dato que no se sabe muy bien

select us.id, us.first_name, us.last_name from users us
where us.first_name LIKE '%N';

select us.id, us.first_name, us.last_name from users us
where us.first_name LIKE '%RA%';


select * from users;

UPDATE users SET first_name ='Micheel', updated_at='2021-07-05 20:16:00' WHERE id=6;

DELETE FROM users WHERE id=7;

INSERT INTO users (first_name,last_name, handle, birthday, created_at, updated_at)
VALUES('Scottie','Pippen', 'Pippen33','1965-09-25','2021-07-05 20:21:00','2021-07-05 20:21:00');


























