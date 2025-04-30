INSERT INTO clientes (client_id, nombre, correo, telefono) VALUES
(1, 'Juan Pérez', 'juanperez@mail.com', '3001112233'),
(2, 'Laura Gómez', 'laura@mail.com', '3002223344'),
(3, 'Carlos Ruiz', 'carlos@mail.com', '3003334455'),
(4, 'Ana Torres', 'ana@mail.com', '3004445566'),
(5, 'Luis Fernández', 'luis@mail.com', '3005556677'),
(6, 'María Ríos', 'maria@mail.com', '3006667788');

INSERT INTO sucursales (sid, nombre, ciudad, direccion) VALUES
(1, 'Sucursal Centro Bogotá', 'Bogotá', 'Cra. 10 #20-30'),
(2, 'Sucursal Medellín Norte', 'Medellín', 'Av. 80 #55-45'),
(3, 'Sucursal Cali Sur', 'Cali', 'Calle 5 #34-20'),
(4, 'Sucursal Barranquilla', 'Barranquilla', 'Cra. 46 #72-123'),
(5, 'Sucursal Bucaramanga', 'Bucaramanga', 'Cra. 33 #45-67'),
(6, 'Sucursal Cartagena', 'Cartagena', 'Av#100-50');


INSERT INTO vehiculos (vid, sid, marca, placa, modelo, año, estado) VALUES
(1, 1, 'Toyota', 'ABC123', 'Corolla', 2020, 'Disponible'),
(2, 2, 'Chevrolet', 'XYZ456', 'Onix', 2021, 'Disponible'),
(3, 3, 'Renault', 'LMN789', 'Sandero', 2019, 'Mantenimiento'),
(4, 4, 'Mazda', 'QRS321', '3', 2022, 'Alquilado'),
(5, 5, 'Kia', 'TUV654', 'Rio', 2023, 'Disponible'),
(6, 6, 'Hyundai', 'JKL987', 'Accent', 2025, 'Disponible');


INSERT INTO alquileres (client_id, vid, fecha_inicio, fecha_fin) VALUES
(1, 1, '2025-04-01', '2025-04-05'),
(2, 2, '2025-04-03', '2025-04-10'),
(3, 3, '2025-04-05', '2025-04-07'),
(4, 4, '2025-04-08', '2025-04-15'),
(5, 5, '2025-04-10', '2025-04-12');

INSERT INTO pagos (aid, monto, fecha_pago, metodo_pago) VALUES
(1, 150.00, '2025-04-01 10:00:00', 'Tarjeta'),
(2, 200.50, '2025-04-03 09:30:00', 'Efectivo'),
(3, 175.75, '2025-04-05 11:15:00', 'Transferencia'),
(4, 300.00, '2025-04-08 14:20:00', 'Tarjeta'),
(5, 120.00, '2025-04-10 08:45:00', 'Efectivo');