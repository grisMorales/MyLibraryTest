Library Component

Libreria que permite la construcción de los compontentes del sistema de diseño

****Recomendaciones:

-Asociar repositorio de código fuente antes de la descarga de la app desde la opción Preferences:
  -> Source Control/Git 
  
-Al realizar la compilación del proyecto en el target de la app se recomienda utilizar un dispositivo con iOS 13 o superior.

-Considerar tener la última actualización de Xcode

****Instalación

1.-Descargar el proyecto
2.-Compilar la librería Commnad + B

****Integración de librería 

1.-Proteger cambios de código fuente desde la opción Source Control:
  Commit -> documentar cambios
2.-Realizar Push dentro de la rama designada

Integración en la app base
1.-Acceder a las propiedades del proyecto General->Frameworks,Libraries and Embedded Content
2.-Presiona la opción de agregar ->Add Package Dependency
3.-Al acceder a la librería debéra seleccionar los componentes que desea agregar de la biblioteca de los componentes

Una vez integrada la librería simplemente se descargan los cambios y se compila nuevamente la app desde la opción
 simplemente se descargan los cambios y se compila nuevamente la app:
 File-> Packages -> Update to lastest package versions.
 
 




