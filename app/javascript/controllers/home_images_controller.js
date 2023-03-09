import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="home-images"
export default class extends Controller {
  connect() {
    const images = [
      '/assets/img_1.jpg',
      '/assets/img_2.jpg',
      '/assets/img_3.jpg',
      '/assets/img_4.jpg',
      '/assets/img_5.jpg'
    ];
    let currentIndex = 0;
    let nextIndex = 1;
    let currentBg = images[currentIndex];
    let nextBg = images[nextIndex];

    this.element.style.backgroundImage = `url('${currentBg}')`;
    setInterval(() => {
      this.element.style.backgroundImage = `url('${nextBg}')`;
      currentIndex = nextIndex;
      nextIndex = (nextIndex + 1) % images.length;
      currentBg = images[currentIndex];
      nextBg = images[nextIndex];
      this.element.classList.add('fade-in');
      setTimeout(() => {
        this.element.classList.remove('fade-in');
      }, 6000);
    }, 10100);
  }
}
