# discord-update-skip
Un simple script en Bash para evitar que Discord quiera actualizar a una versión que no está en los repositorios.

Idioma: español

También disponible en:
![english](README.md)

-------------------------------------------------------------------------------

## Dependencias
 * Bash
 * [jq](https://github.com/stedolan/jq)

## Instalación
### El script se encuentra disponible en AUR:
```sh
paru -S discord-update-skip-git
```

## Uso
Para parchar su configuración de Discord, simplemente ejecute el script
```sh
discord-update-skip
```

### En cualquier otra distribución basada en Linux:
Ejecutando el script de instalación, no deberá hacer nada mas (se ejecuta todo junto)
```
curl -sSL https://raw.githubusercontent.com/n3oney/discord-update-skip/stable/set-config.sh | bash
```

El script debería funcionar incluso si su configuración de Discord no ha sido inicializada,
de ser así, será notificado.

## Versiones de Discord
Esta es la rama estable, y está destinada a la versión estable de Discord.
Otras versiones:
 * [PTB](https://github.com/n3oney/discord-update-skip/tree/ptb)
 * [canary](https://github.com/n3oney/discord-update-skip/tree/canary)
