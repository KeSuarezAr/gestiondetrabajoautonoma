void main(List<String> arguments) {
  Vehiculo vehiculo1 = Vehiculo();
  Vehiculo vehiculo2 = Vehiculo.conCapacidad(4);
  Vehiculo vehiculo3 = Vehiculo.desdeMotor('Motor 2.0');

  print(
      'Motor: ${vehiculo1.motor}, Capacidad: ${vehiculo1.capacidad} pasajeros');
  print(
      'Motor: ${vehiculo2.motor}, Capacidad: ${vehiculo2.capacidad} pasajeros');
  print(
      'Motor: ${vehiculo3.motor}, Capacidad: ${vehiculo3.capacidad} pasajeros');

  ConexionDB conexion = ConexionDB();

  print(conexion);

  ConexionDB conexion2 = ConexionDB();

  print(conexion2);

  if (identical(conexion, conexion2)) {
    print('Las dos variables apuntan a la misma instancia');
  } else {
    print('Las dos variables apuntan a instancias diferentes');
  }
}

/// Clase Vehiculo con varios constructores por nombre.
class Vehiculo {
  late String motor;
  late int capacidad;

  /// Constructor por defecto.
  Vehiculo() {
    motor = 'Motor por defecto';
    capacidad = 5;
  }

  /// Constructor para inicializar con un tipo de motor específico.
  Vehiculo.desdeMotor(this.motor) {
    capacidad = 4;
  }

  /// Constructor para inicializar con una capacidad específica.
  Vehiculo.conCapacidad(this.capacidad) {
    motor = 'Motor por defecto';
  }
}

/// Clase ConexionDB con un constructor de fábrica.
class ConexionDB {
  static ConexionDB? _instance;

  /// Constructor de fábrica para implementar el patrón singleton, este constructor verifica si ya existe una instancia de ConexionDB.
  /// Si no existe, crea una nueva instancia. De lo contrario, devuelve la instancia existente.
  factory ConexionDB() {
    _instance ??= ConexionDB._internal();
    return _instance!;
  }

  /// Constructor interno privado.
  /// Este constructor es privado para prevenir la creación de múltiples instancias de ConexionDB.
  ConexionDB._internal();
}
