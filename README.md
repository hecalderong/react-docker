<img src="https://github.com/hecalderong/react-docker/blob/main/images/react-docker.png" alt="Dockerizando React" width="100%">

# React Docker Development Environment

Este proyecto proporciona un entorno de desarrollo completo para React utilizando Docker

## Requisitos Previos

- Docker
- Docker Compose
- Git

## Estructura del Proyecto

```
proyecto/   
├── docker/
│   └── init.sh
├── app/                 # Código fuente de React
├── docker-compose.yml
└── Dockerfile
```

## Configuración Inicial

1. Clona este repositorio:
```bash
git clone <url-del-repositorio>
cd <nombre-del-repositorio>
```

2. Primera ejecución (creará un nuevo proyecto de React):
```bash
docker-compose up --build -d
```

El sistema realizará las siguientes acciones:
- Creará un nuevo proyecto de React si no existe
### Ejecuciones Posteriores

```bash
docker-compose up -d
``` 

## Acceso a los Servicios

- **React App**: http://localhost:3000

## Comandos Útiles

### Iniciar los servicios
```bash
docker-compose up -d
```

### Detener los servicios
```bash
docker-compose down
```

### Ver logs
```bash
docker-compose logs -f
```

### Acceder al contenedor de React
```bash
docker-compose exec react sh
```

## Desarrollo

1. El código fuente de tu aplicación se encontrará en la carpeta `app`
2. Los cambios que realices en el código se reflejarán automáticamente gracias al volumen configurado


## Consideraciones

- La primera vez que ejecutes el proyecto, tardará más tiempo debido a la creación del proyecto React
- Los node_modules se mantienen dentro del contenedor para evitar problemas de compatibilidad

## Solución de Problemas

Si encuentras problemas con los permisos:
```bash
chmod -R 777 app
```

Si necesitas reinstalar las dependencias:
```bash
docker-compose exec react npm install
```

Si necesitas reiniciar los servicios:
```bash
docker-compose restart
```