######
######  $$$$$$\  $$$$$$$\  $$$$$$$$\ $$$$$$$\         $$$$$$\   $$$$$$\         $$$$$$\                                    $$\                     
###### $$  __$$\ $$  __$$\ \____$$  |$$  __$$\       $$  __$$\ $$$ __$$\       $$  __$$\                                   $$ |                    
###### $$ /  $$ |$$ |  $$ |    $$  / $$ |  $$ |      \__/  $$ |$$$$\ $$ |      $$ /  \__| $$$$$$\  $$$$$$\$$$$\   $$$$$$\  $$ | $$$$$$\  $$\   $$\ 
###### $$$$$$$$ |$$ |  $$ |   $$  /  $$$$$$$  |       $$$$$$  |$$\$$\$$ |      $$ |      $$  __$$\ $$  _$$  _$$\ $$  __$$\ $$ |$$  __$$\ \$$\ $$  |
###### $$  __$$ |$$ |  $$ |  $$  /   $$  ____/       $$  ____/ $$ \$$$$ |      $$ |      $$ /  $$ |$$ / $$ / $$ |$$ /  $$ |$$ |$$$$$$$$ | \$$$$  / 
###### $$ |  $$ |$$ |  $$ | $$  /    $$ |            $$ |      $$ |\$$$ |      $$ |  $$\ $$ |  $$ |$$ | $$ | $$ |$$ |  $$ |$$ |$$   ____| $$  $$<  
###### $$ |  $$ |$$$$$$$  |$$$$$$$$\ $$ |            $$$$$$$$\ \$$$$$$  /      \$$$$$$  |\$$$$$$  |$$ | $$ | $$ |$$$$$$$  |$$ |\$$$$$$$\ $$  /\$$\ 
###### \__|  \__|\_______/ \________|\__|            \________| \______/        \______/  \______/ \__| \__| \__|$$  ____/ \__| \_______|\__/  \__|
######                                                                                                           $$ |                              
######                                                                                                           $$ |                              
######                                                                                                           \__|                              

### Un malware que yo cree en 2023, recien lo actualizo con nuevas funciones. (Este fue mi primer malware)
### Nivel de peligro: Maximo
### Lenguaje de programacion: MS-DOS Batch

# ⚠ ADVERTENCIA ⚠
### Este malware es extremadamente destructivo, si lo vas a probar, hacelo en una maquina virtual, no me hare responsable de ningun daño que cause, si lo descargas y reventas tu PC sera bajo TU responsabilidad.

# Funciones integradas:
### - El malware puede sobreescribir el MBR, haciendo que la maquina quede completamente inusable.
### - Tambien puede borrar el BCD.
### - Bloquea funciones del sistema a base del registro de Windows, como el administrador de tareas o la funcion "run" de Windows.
### - Ejecuta un flood de cajas de mensajes, las cuales no se pueden cerrar porque se vuelven a abrir en un bucle infinito.
### - Incluye musica bytebeat.
### - Aparte de todo lo anterior, tambien puede borrar archivos de System32 masivamente.
### - Puede anular la conexion a internet.
### - Puede invertir los botones del mouse, con user32.dll.
### - Puede causar un flood de aplicaciones intenso, entre estas, explorer.exe, paint.exe, calc.exe o una instancia del mismo malware.
### - Crea archivos basura de todo tipo de extensiones aleatorias.
### - Puede copiarse al folder de Startup.
### - En caso de una version antigua de Windows, el malware ataca los famosos archivos "boot.ini", "ntldr", "autoexec.bat", "windowswin.ini" y "ntdetect.com"
### - Para finalizar, se muestra un ultimo mensaje de shutdown.exe.
### - El virus habra terminado finalmente y este terminara con un BSOD instantaneo, el cual su codigo fue mejorado y ahora funciona en Windows 7 y en versiones nuevas y antiguas.

### Creado por: 𝓓𝓱𝓪𝓻𝓴𝓸𝓷 𝓢𝓚.
