# Semana 13: Permisos en Android e iOS

Caso práctico de seguridad personal: una aplicación con un botón para compartir la ubicación, que controla los permisos antes de usarla.

## Diferencia entre permisos declarativos y en tiempo de ejecución

### Permisos declarativos (estáticos)

- **¿Qué son?** Son aquellos permisos obligatorios que se declaran previamente en los archivos de configuración de la aplicación (como el `AndroidManifest.xml` en Android o el `Info.plist` en iOS).
- **Propósito:** Informan tanto al sistema operativo como al usuario (durante la descarga en la tienda de aplicaciones) sobre las capacidades de hardware o datos sensibles que la aplicación pretende utilizar (por ejemplo, cámara o ubicación).

### Permisos en tiempo de ejecución (runtime permissions)

- **¿Qué son?** Son las solicitudes interactivas que la aplicación lanza dinámicamente mientras el usuario está utilizando la interfaz (por ejemplo, al hacer clic en un botón).
- **Propósito:** Brindan mayor privacidad y control al usuario, permitiéndole conceder o denegar el acceso a funciones sensibles (como el GPS o la cámara) solo cuando realmente se necesitan.

## Código

### Android (Java)

| Componente | Archivo |
|---|---|
| Permisos declarativos | [AndroidManifest.xml](android/app/src/main/AndroidManifest.xml) |
| Interfaz gráfica | [activity_main.xml](android/app/src/main/res/layout/activity_main.xml) |
| Permisos en tiempo de ejecución | [MainActivity.java](android/app/src/main/java/com/example/semana13permisos/MainActivity.java) |

Para ejecutarlo, abre la carpeta `android` en Android Studio.

### iOS (Swift)

| Componente | Archivo |
|---|---|
| Permisos declarativos | [Info.plist](ios/Info.plist) |
| Permisos en tiempo de ejecución | [ViewController.swift](ios/ViewController.swift) |

Para ejecutarlo, crea un proyecto de app iOS en Xcode, reemplaza su `ViewController.swift` y agrega las dos claves de `Info.plist` a las del proyecto.
