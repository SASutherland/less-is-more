import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="typed"
export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["Community Builder", "Impact Calculator", "Idea Generator"],
      typeSpeed: 60,
      loop: true,
      showCursor: false
    })
  }
}
