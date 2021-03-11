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

        cursor.execute('insert into productos(nombre,descripcion,precio_venta,precio_compra,ganancia,estado) values(?,?,?,?,?,?)', (data['nombre'],data['descripcion'],data['precioDeVenta'],data['precioDeCompra'],data['ganancia'],data['estado'],))

        cursor.close()

    def select(self,id):
        cursor = DB.cursor()
        cursor.execute("""select * from productos where id = ?""",(id,))
        productoData = cursor.fetchone()
        cursor.close()
        return productoData

    def editar(self,id,data):
        cursor = DB.cursor()
        cursor.execute(""" UPDATE productos SET nombre=?, descripcion=?, precio_compra=?,
        precio_venta=?, ganancia=?, estado=? WHERE id=? """,(data['nombre'],data['descripcion'],data['precioDeCompra'],data['precioDeVenta'],data['ganancia'],data['estado'],id,))
        cursor.close()
    
    def eliminar(self,id):
        cursor = DB.cursor()
        cursor.execute(""" DELETE FROM productos WHERE id = ? """,(id,))
        cursor.close()