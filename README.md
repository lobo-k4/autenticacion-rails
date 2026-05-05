# 🛡️ Autenticación en Rails

Proyecto desarrollado con Ruby on Rails que implementa autenticación nativa (login, registro y recuperación de contraseña) usando PostgreSQL y TailwindCSS.

---

## 🚀 Requisitos

Antes de ejecutar el proyecto, asegúrate de tener instalado:

* Ruby (3.x o superior)
* Rails (8.x)
* PostgreSQL
* Node.js (opcional, para assets)
* Git

---

## 📥 Clonar el repositorio

---

## 📦 Instalar dependencias

```bash
# Instalar las gemas necesarias (puede tomar varios minutos)
bundle install

# Si bundle install falla, prueba con:
gem install bundler
bundle install

#Tailwind/Bootstrap con hot-reload
rails tailwindcss:watch  # En otra terminal
# Iniciar el servidor de Rails
rails server

---

## 🗄️ Configurar base de datos

Asegúrate de que PostgreSQL esté encendido. 
#Y COLOCA LA CONTRASEÑA QUE LE PUSISTE AL INSTALAR POSTGRESQL 

Luego ejecuta:

```bash
rails db:create
rails db:migrate
```

---

## 🔐 Variables de entorno (opcional para correos)

Si quieres habilitar envío de correos con Gmail:

```bash
setx GMAIL_USER "tu_correo@gmail.com"
setx GMAIL_PASS "tu_contraseña_de_aplicacion"
```

⚠️ Reinicia la terminal después de esto.

---

## 🎨 Compilar estilos (TailwindCSS)

En una terminal:

```bash
rails tailwindcss:watch
```

---

## ▶️ Ejecutar el servidor

En otra terminal:

```bash
rails s
```

---

## 🌐 Abrir en navegador

Ir a:

```
http://localhost:3000
```

---

## 👤 Usuario de prueba

Puedes crear uno desde consola:

```bash
rails c
```

```ruby
User.create(email_address: "admin@gmail.com", password: "123456", password_confirmation: "123456")
```

---

## 🔁 Recuperación de contraseña

Desde la app:

* Ir a login
* Click en "¿Olvidaste tu contraseña?"
* Ingresar email

En desarrollo, el correo se muestra en consola o navegador.

---

## 🧪 Prueba manual de correo

```bash
rails c
```

```ruby
PasswordsMailer.reset(User.first).deliver_now
```

---

## 🛠️ Tecnologías usadas

* Ruby on Rails 8
* PostgreSQL
* TailwindCSS
* Autenticación nativa de Rails

---

## 📌 Notas

* Las contraseñas están encriptadas con bcrypt
* El sistema incluye recuperación de contraseña con token
* En desarrollo, los correos no siempre se envían realmente (solo se simulan)

