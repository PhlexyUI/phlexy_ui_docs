import "@hotwired/turbo-rails";
import "../controllers";

import { StreamActions } from "@hotwired/turbo";
StreamActions.set_dataset_attribute = function () {
  const attribute = this.getAttribute("attribute");
  const value = this.getAttribute("value") || "";

  this.targetElements.forEach((element) => {
    element.dataset[attribute] = value;
  });
};
