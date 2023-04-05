import { Controller } from "@hotwired/stimulus"
import * as Bootstrap from 'bootstrap'

// Connects to data-controller="tooltip"
export default class extends Controller {
  connect() {
    window.bootstrap = bootstrap;
    console.log("badjoras, mano!");
    const tooltipTriggerList = document.querySelectorAll('[data-bs-toggle="tooltip"]');
    console.log(tooltipTriggerList);
    const tooltipList = [...tooltipTriggerList].map(tooltipTriggerEl => new Tooltip(tooltipTriggerEl));
    console.log(tooltipList);
  }
}
