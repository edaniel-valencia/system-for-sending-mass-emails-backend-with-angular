<div align="center">
  <img src="./logo.png" alt="Logo" width="200"/>
  <h1>System For Sending Mass Emails (Backend)</h1>

  <p>Sistema robusto para la administración y envío masivo de correos electrónicos.</p>
  
  <a href="https://github.com/edaniel-valencia/system-for-sending-mass-emails-frontend-with-angular" target="_blank">
    <img src="https://img.shields.io/badge/📥_Descargar_Frontend-0052CC?style=for-the-badge&logo=github&logoColor=white" alt="Descargar Frontend"/>
  </a>
</div>

<br />

## 🚀 Pre-requisitos

Asegúrate de tener instalado lo siguiente en tu entorno local:
- [Node.js](https://nodejs.org/) (Versión 24 o superior recomendada)
- Base de datos MySQL en ejecución
- [Git](https://git-scm.com/)

## ⚙️ Configuración

1. **Clona el repositorio**
   ```bash
   git clone <URL_DEL_REPOSITORIO>
   cd system-for-sending-mass-emails-backend-with-angular
   ```

2. **Instala las dependencias**
   ```bash
   npm install
   ```

3. **Configura las variables de entorno**
   Crea un archivo `.env` en la raíz del proyecto basándote en la siguiente estructura:
   ```env
   # App Configuration
   APP_PORT=3002
   APP_URL=http://localhost:4200
   
   # Database Configuration
   DB_HOST=localhost
   DB_PORT=3306
   DB_USER=root
   DB_PASS=tu_contraseña # Deja vacío si no usas contraseña en local
   DB_NAME=edaniel-sending-mass-emails
   
   # Security
   JWT_SECRET=tu_clave_secreta_aqui
   ```

4. **Poblar la base de datos (Seed)**
   Para cargar las configuraciones iniciales, el usuario administrador y la primera categoría, compila y ejecuta el script de seed:
   ```bash
   npx tsc
   node dist/seed.js
   ```

## 💻 Ejecución en local

Para levantar el proyecto en modo desarrollo con auto-recarga (usando `nodemon` y TypeScript), ejecuta:

```bash
npm run dev
```

Verás un mensaje en la terminal indicando que el servidor se está ejecutando (por ejemplo, en el puerto `3002`) y confirmando la conexión a la base de datos.

---
<div align="center">
  <sub>Desarrollado por <b>E. Daniel Valencia de ADAVAM</b></sub>
</div>
