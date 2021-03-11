from flask import render_template, request, redirect, url_for
from src import app
from src.models.productos import ProductosModel

@app.route('/productos')
def productos():
    productosModel = ProductosModel()

    productos = productosModel.traerTodos()

    return render_template('productos/index.html', productos = productos)

@app.route('/productos/crear', methods = ['GET', 'POST'])
def crear_producto():
    #Esta funcion me sirve para mostrar el fprmulario de creacion
    #y también para crear un nuevo producto
    #Estos pasos se identifican con los metodos
    if request.method == 'GET':
        #Mostramos formulario de creación
        return render_template('productos/crear.html')
    
    #Acá es la creacion del producto
    
    nombre = request.form.get('nombre')
    descripcion = request.form.get('descripcion')
    precioDeVenta = request.form.get('precio_venta')
    precioDeCompra = request.form.get('precio_compra')
    estado = request.form.get('estado')
    ganancia = request.form.get('ganancia')

    print(precioDeVenta)
  
    productoData = {
        'nombre' : nombre,
        'descripcion' : descripcion,
        'precioDeVenta' : float(precioDeVenta),
        'precioDeCompra' : float(precioDeCompra),
        'ganancia' : float(ganancia),
        'estado' : estado
    }
    productosModel = ProductosModel()
    productosModel.crear(productoData)

    return redirect(url_for('productos'))

@app.route('/productos/editar/<int:id>', methods = ['GET', 'POST'])
def editar_producto(id):
    productosModel = ProductosModel()
    if request.method == 'GET':
        producto = productosModel.select(id)  
        return render_template('productos/editar.html', producto = producto)
    nombre = request.form.get('nombre')   
    descripcion = request.form.get('descripcion')   
    precioDeCompra = request.form.get('precio_compra')  
    precioDeVenta = request.form.get('precio_venta')   
    ganancia = request.form.get('ganancia') 
    estado = request.form.get('estado')
    productoData = {
        'nombre' : nombre,
        'descripcion' : descripcion,
        'precioDeVenta' : float(precioDeVenta),
        'precioDeCompra' : float(precioDeCompra),
        'ganancia' : float(ganancia),
        'estado' : estado
    }
    productosModel.editar(id,productoData)
    return redirect(url_for('productos'))

@app.route('/productos/eliminar/<int:id>', methods = ['GET', 'POST'])
def eliminar_producto(id):
    productosModel = ProductosModel()
    productosModel.eliminar(id)
    return redirect(url_for('productos'))