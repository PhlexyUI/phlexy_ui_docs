import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  connect() {
    const theme = localStorage.getItem("theme") || "light";
    document.documentElement.dataset.theme = theme;
  }

  change(event) {
    const theme = event.target.dataset.theme;
    document.documentElement.dataset.theme = theme;

    if (localStorage.getItem("theme") !== theme) {
      localStorage.setItem("theme", theme);
    }
  }
}
