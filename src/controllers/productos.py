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
    precioDeVenta = request.form.get('precioDeVenta')
    precioDeCompra = request.form.get('precioDeCompra')
    estado = request.form.get('estado')

    
  
    productoData = {
        'nombre' : nombre,
        'descripcion' : descripcion,
        'precioDeVenta' : float(precioDeVenta),
        'precioDeCompra' : float(precioDeCompra),
        'estado' : estado
    }
    productosModel = ProductosModel()
    productosModel.crear(productoData)

    return redirect(url_for('productos'))

@app.route('/productos/editar/<int:id>', methods=['GET','POST'])

def editar_producto(id):
    productosModel = ProductosModel()

    if request.method == 'GET':
        
        return render_template('productos/editar.html')
    
    #Acá es la edición del producto
    
    nombre = request.form.get('nombre')
    descripcion = request.form.get('descripcion')
    precioDeVenta = request.form.get('precioDeVenta')
    precioDeCompra = request.form.get('precioDeCompra')
    estado = request.form.get('estado')

 
    return redirect(url_for('productos'))