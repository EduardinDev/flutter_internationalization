# flutter_internationalization

Este proyecto utiliza la librería de easy_location

# Paso 1
Crear el directorio assets/translations

# Paso 2
crear los archivos .json con las inciales del lenguaje que va a contener cada archivo. Ejemplo:
-   en.json
-   es.json

# Paso 3
Programar de acuerdo al ejemplo

# Paso 4 : Ejecutar los siguiente comandos 

## Comando 1: Genera el archivo codegen_loader.g.dart
Toma la ruta de "assets/translations" (que es donde se encuentran los archivos json con las traducciones)
y en base a esos archivos json crea la clase CodegenLoader que contiene maps con las traducciones en el 
directorio lib/translations.

1. flutter pub run easy_localization:generate -S "assets/translations" -O "lib/translations"

## Comando 2: Genera el archivo locale_keys.g.dart
Toma la ruta de "assets/translations" (que es donde se encuentran los archivos json con las traducciones)
y en base a esos archivos json crea el archivo locale_keys.g.dart en  directorio lib/translations que contiene la clase LocalKeys con las claves de los maps creados anteriormente.

2. flutter pub run easy_localization:generate -S "assets/translations" -O "lib/translations" -o "locale_keys.g.dart" -f keys

