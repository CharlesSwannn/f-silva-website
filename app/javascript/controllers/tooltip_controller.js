import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="tooltip"
export default class extends Controller {
  connect() {

    console.log("badjoras, mano!");
    const tooltipTriggerList = document.querySelectorAll('[data-bs-toggle="tooltip"]');
    console.log(tooltipTriggerList);
    const tooltipList = [...tooltipTriggerList].map(tooltipTriggerEl => new Tooltip(tooltipTriggerEl));
    console.log(tooltipList);
  }
}
