const banner = document.getElementById("cookie-banner");
const acceptBtn = document.getElementById("accept-cookies");
const declineBtn = document.getElementById("decline-cookies");

if (!localStorage.getItem("cookieConsent")) {
  banner.style.display = "flex";
}

acceptBtn.addEventListener("click", () => {
  localStorage.setItem("cookieConsent", "accepted");
  banner.style.display = "none";
});

declineBtn.addEventListener("click", () => {
  localStorage.setItem("cookieConsent", "declined");
  banner.style.display = "none";
});
