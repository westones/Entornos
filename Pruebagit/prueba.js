// Script para controlar navegación y dinámicas
document.addEventListener("DOMContentLoaded", () => {
  const botones = document.querySelectorAll("nav button");
  const secciones = document.querySelectorAll("main section");
  const yearSpan = document.getElementById("year");

  // Mostrar año dinámico en el footer
  yearSpan.textContent = new Date().getFullYear();

  // Manejo de clicks en botones
  botones.forEach((btn) => {
    btn.addEventListener("click", () => {
      const destino = btn.dataset.seccion;

      // Ocultar todas las secciones
      secciones.forEach((sec) => sec.classList.remove("activo"));

      // Mostrar la sección elegida
      document.getElementById(destino).classList.add("activo");

      // Feedback visual en los botones
      botones.forEach((b) => b.classList.remove("activo"));
      btn.classList.add("activo");
    });
  });

  // Pequeño easter egg en consola 😏
  console.log("%cBienvenido al proyecto 👋", "color:#3498db; font-size:16px;");
  console.log("Esto es solo una prueba con Git & GitHub 🚀");
});
