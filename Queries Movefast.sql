-- muestra los vehículos disponibles en una ciudad específica
SELECT v.vid, v.marca, v.placa, v.modelo, v.año, v.estado
FROM vehiculos v
JOIN sucursales s ON v.sid = s.sid
WHERE s.ciudad = 'Bogotá' AND v.estado = 'Disponible';

-- Selecciona los alquileres activos con información del cliente y el vehículo
SELECT a.aid, c.nombre AS cliente, v.marca AS vehiculo, v.placa, a.fecha_inicio, a.fecha_fin
FROM alquileres a
JOIN clientes c ON a.client_id = c.client_id
JOIN vehiculos v ON a.vid = v.vid
WHERE a.fecha_fin >= CURRENT_DATE;

-- Calcula los ingresos totales por sucursal considerando solo vehículos con más de 3 alquileres
SELECT s.nombre AS sucursal, SUM(p.monto) AS ingresos_totales
FROM pagos p
JOIN alquileres a ON p.aid = a.aid
JOIN vehiculos v ON a.vid = v.vid
JOIN sucursales s ON v.sid = s.sid
WHERE v.vid IN(
	SELECT vid
	FROM alquileres 
	GROUP BY vid
	HAVING COUNT(aid) > 3
)
GROUP BY s.nombre;

-- Filtra los vehículos que tienen más de 5 alquileres utilizando una subconsulta
SELECT v.vid, v.marca, v.placa, v.modelo, v.año
FROM vehiculos v
WHERE v.vid IN(
	SELECT vid
	FROM alquileres 
	GROUP BY vid
	HAVING COUNT(vid) >5
);

-- Suma el monto de todos los pagos registrados
SELECT SUM(p.monto) AS pagos_totales
FROM pagos p