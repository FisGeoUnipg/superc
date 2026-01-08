document.addEventListener("DOMContentLoaded", () => {
  fetch("partials/evento_tmpl.html")
    .then(response => response.text())
    .then(html => {
      document.getElementById("evento").innerHTML = html;
    })
    .catch(err => {
      console.error("Errore nel caricamento del template:", err);
    });
});
