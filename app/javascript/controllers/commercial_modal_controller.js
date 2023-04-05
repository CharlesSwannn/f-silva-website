import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="commercial-modal"
export default class extends Controller {
  static targets = ["image"]
  connect() {
  }
  largeImage(event){
    if(event.target.classList.contains("modal-photo")){
      const src = event.target.getAttribute("src");
      this.imageTarget.src = src;
      const myModal = new bootstrap.Modal(document.getElementById('exampleModal'));
      myModal.show();
    }
  }
}
