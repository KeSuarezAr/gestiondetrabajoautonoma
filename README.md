Puedes ver el projecto en github [aquí](https://github.com/yourusername).

### Vehiculo

La clase `Vehiculo` demuestra el uso de constructores nombrados. Tiene tres constructores:

- `Vehiculo()`: El constructor por defecto, que inicializa el campo `motor` a 'Motor por defecto' y el campo `capacidad` a 5.
- `Vehiculo.desdeMotor(String motor)`: Un constructor nombrado que inicializa el campo `motor` con el valor proporcionado y el campo `capacidad` a 4.
- `Vehiculo.conCapacidad(int capacidad)`: Un constructor nombrado que inicializa el campo `capacidad` con el valor proporcionado y el campo `motor` a 'Motor por defecto'.

### ConexionDB

La clase `ConexionDB` demuestra el uso del patrón Singleton. Tiene un campo estático privado `_instance` que mantiene la única instancia de `ConexionDB`. El constructor de fábrica `ConexionDB()` verifica si `_instance` es `null`. Si lo es, crea una nueva instancia de `ConexionDB`. De lo contrario, devuelve la instancia existente de `ConexionDB`.

## Uso

La función principal demuestra el uso de las clases `Vehiculo` y `ConexionDB`.

Crear una instancia de `Vehiculo` utilizando el constructor por defecto.

```dart
void main() {
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
```

Crea dos instancias de `ConexionDB` y verifica si son idénticas.

```dart
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
}
```
