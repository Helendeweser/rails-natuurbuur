import { Controller } from "@hotwired/stimulus"
import { Tooltip } from "bootstrap/dist/js/bootstrap.bundle.js";

// Connects to data-controller="tooltip"
export default class extends Controller {
  connect() {
    console.log("Hello!")
    new Tooltip(this.element)
  }
}
