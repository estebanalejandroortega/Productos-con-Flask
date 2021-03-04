from src.config.db import DB

class ProductosModel():
    def traerTodos(self):
        cursor = DB.cursor()

        cursor.execute('select * from productos')

        productos = cursor.fetchall()

        cursor.close()

        return productos
    
    def crear(self, data):
        cursor = DB.cursor()

        cursor.execute('insert into productos(nombre,descripcion,precioDeVenta,precioDeCompra,estado) values(?,?,?,?,?)', (data['nombre'],data['descripcion'],data['precioDeVenta'],data['precioDeCompra'],data['estado'],))

        cursor.close()