# 🎯 Componentes Reutilizables - Auth App

## Componentes de Diseño

### 1. Tarjeta Principal (Card)
```erb
<div class="bg-white rounded-2xl shadow-xl overflow-hidden">
  <div class="bg-gradient-to-r from-indigo-600 to-blue-600 px-8 py-12 text-center">
    <h1 class="text-4xl font-bold text-white mb-2">Título</h1>
    <p class="text-indigo-100">Subtítulo descriptivo</p>
  </div>
  <div class="px-8 py-8">
    <!-- Contenido -->
  </div>
</div>
```

### 2. Campo de Entrada con Icono
```erb
<div class="mb-6">
  <%= form.label :field, "Etiqueta", class: "block text-sm font-semibold text-gray-700 mb-2" %>
  <div class="relative">
    <div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
      <svg class="h-5 w-5 text-indigo-400" fill="currentColor" viewBox="0 0 20 20">
        <!-- SVG aquí -->
      </svg>
    </div>
    <%= form.text_field :field, class: "w-full pl-10 pr-4 py-3 border border-gray-300 rounded-lg focus:outline-none focus:border-indigo-500 focus:ring-2 focus:ring-indigo-200 transition duration-200" %>
  </div>
</div>
```

### 3. Botón Principal
```erb
<button class="w-full bg-gradient-to-r from-indigo-600 to-blue-600 text-white font-bold py-3 rounded-lg hover:from-indigo-700 hover:to-blue-700 transition duration-200 transform hover:scale-105 shadow-lg">
  Acción Principal
</button>
```

### 4. Botón Secundario
```erb
<button class="w-full bg-gray-200 text-gray-800 font-bold py-3 rounded-lg hover:bg-gray-300 transition duration-200">
  Acción Secundaria
</button>
```

### 5. Mensaje de Alerta (Error)
```erb
<div class="mb-6 p-4 bg-red-50 border border-red-200 text-red-700 rounded-lg flex items-start">
  <svg class="h-5 w-5 text-red-500 mt-0.5 mr-3 flex-shrink-0" fill="currentColor" viewBox="0 0 20 20">
    <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zM8.707 7.293a1 1 0 00-1.414 1.414L8.586 10l-1.293 1.293a1 1 0 101.414 1.414L10 11.414l1.293 1.293a1 1 0 001.414-1.414L11.414 10l1.293-1.293a1 1 0 00-1.414-1.414L10 8.586 8.707 7.293z" clip-rule="evenodd"></path>
  </svg>
  <span>Mensaje de error</span>
</div>
```

### 6. Mensaje de Éxito
```erb
<div class="mb-6 p-4 bg-green-50 border border-green-200 text-green-700 rounded-lg flex items-start">
  <svg class="h-5 w-5 text-green-500 mt-0.5 mr-3 flex-shrink-0" fill="currentColor" viewBox="0 0 20 20">
    <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clip-rule="evenodd"></path>
  </svg>
  <span>Mensaje de éxito</span>
</div>
```

### 7. Mensaje de Información
```erb
<div class="mb-6 p-4 bg-blue-50 border border-blue-200 rounded-lg">
  <p class="text-gray-700 text-sm">
    Texto informativo
  </p>
</div>
```

### 8. Tarjeta de Estadística
```erb
<div class="bg-white rounded-xl shadow-lg p-6 border-l-4 border-indigo-500">
  <div class="flex items-center justify-between">
    <div>
      <p class="text-gray-600 text-sm font-semibold mb-1">Etiqueta</p>
      <p class="text-2xl font-bold text-indigo-600">Valor</p>
    </div>
    <svg class="h-12 w-12 text-indigo-500" fill="currentColor" viewBox="0 0 20 20">
      <!-- SVG aquí -->
    </svg>
  </div>
</div>
```

### 9. Separador con Texto
```erb
<div class="mt-8 relative">
  <div class="absolute inset-0 flex items-center">
    <div class="w-full border-t border-gray-300"></div>
  </div>
  <div class="relative flex justify-center text-sm">
    <span class="px-2 bg-white text-gray-500">Texto del separador</span>
  </div>
</div>
```

### 10. Barra de Navegación
```erb
<nav class="bg-white shadow">
  <div class="max-w-6xl mx-auto px-6 py-4 flex justify-between items-center">
    <h1 class="text-2xl font-bold bg-gradient-to-r from-indigo-600 to-blue-600 bg-clip-text text-transparent">
      Logo
    </h1>
    <div class="flex gap-4">
      <!-- Elementos nav aquí -->
    </div>
  </div>
</nav>
```

## Colores Estándar

### Paleta Principal
```css
/* Indigo */
--indigo-50: #eef2ff
--indigo-100: #e0e7ff
--indigo-600: #4f46e5
--indigo-700: #4338ca

/* Blue */
--blue-50: #eff6ff
--blue-100: #dbeafe
--blue-600: #2563eb
--blue-700: #1d4ed8

/* Gray */
--gray-50: #f9fafb
--gray-500: #6b7280
--gray-600: #4b5563
--gray-700: #374151

/* Red (Error) */
--red-50: #fef2f2
--red-200: #fecaca
--red-500: #ef4444
--red-600: #dc2626

/* Green (Éxito) */
--green-50: #f0fdf4
--green-200: #bbf7d0
--green-500: #22c55e
--green-600: #16a34a
```

## Espaciado Estándar

```css
/* Padding */
px-3: 0.75rem  /* Horizontal pequeño */
px-4: 1rem     /* Horizontal normal */
px-6: 1.5rem   /* Horizontal grande */
px-8: 2rem     /* Horizontal extra grande */

py-2: 0.5rem   /* Vertical pequeño */
py-3: 0.75rem  /* Vertical normal */
py-4: 1rem     /* Vertical medio */
py-8: 2rem     /* Vertical grande */

/* Margin */
mb-2: 0.5rem   /* Pequeño */
mb-4: 1rem     /* Normal */
mb-6: 1.5rem   /* Grande */
mb-8: 2rem     /* Extra grande */
```

## Efectos y Transiciones

### Hover
```css
/* Botones */
hover:from-indigo-700 hover:to-blue-700
hover:scale-105
hover:bg-gray-300
hover:shadow-lg

/* Enlaces */
hover:text-indigo-700
hover:underline
```

### Transiciones
```css
transition duration-200   /* 200ms */
transition duration-300   /* 300ms */
```

### Sombras
```css
shadow          /* Pequeña */
shadow-lg       /* Grande */
shadow-xl       /* Extra grande */
```

## Tipografía

### Tamaños de Fuente
```css
text-xs   /* 0.75rem */
text-sm   /* 0.875rem */
text-base /* 1rem */
text-lg   /* 1.125rem */
text-xl   /* 1.25rem */
text-2xl  /* 1.5rem */
text-4xl  /* 2.25rem */
```

### Pesos
```css
font-medium    /* 500 */
font-semibold  /* 600 */
font-bold      /* 700 */
```

## Ejemplos de Uso

### Login Page
```erb
<div class="min-h-screen flex items-center justify-center bg-gradient-to-br from-indigo-50 to-blue-50">
  <div class="w-full max-w-md">
    <!-- Tarjeta Principal aquí -->
  </div>
</div>
```

### Dashboard
```erb
<div class="min-h-screen bg-gradient-to-br from-indigo-50 to-blue-50">
  <!-- Barra de Navegación aquí -->
  <div class="max-w-6xl mx-auto px-6 py-12">
    <!-- Contenido principal aquí -->
  </div>
</div>
```

---

**Nota:** Todos los componentes usan Tailwind CSS. Personalizalos según tus necesidades.
