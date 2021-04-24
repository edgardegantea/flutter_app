class Articulo {
  final int id;
  final String nombre;
  final String descripcion;
  final int stock;
  final double precio;
  final String marca;
  final String modelo;
  final String dimensiones;
  final String disponible;

  Articulo({
        this.id,
      this.nombre,
      this.descripcion,
      this.stock,
      this.precio,
      this.marca,
      this.modelo,
      this.dimensiones,
      this.disponible
      });

  factory Articulo.fromJson(Map<String, dynamic> json) {
    return Articulo(
        id: json['id'],
        nombre: json['nombre'],
        descripcion: json['descripcion'],
        stock: json['stock'],
        precio: json['precio'],
        marca: json['marca'],
        modelo: json['modelo'],
        dimensiones: json['dimensiones'],
        disponible: json['disponible']);
  }
}
