import "@hotwired/turbo-rails";
import "../controllers";

import { themeChange } from "theme-change";
themeChange();

document.addEventListener("turbo:load", () => {
  themeChange();
});
