import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dropdown-menu"
export default class extends Controller {

  static targets = ["dropdown"]
  static values = { isOpen: { type: Boolean, default: false } }

  connect() {
  }

  menu() {
    this.isOpenValue ? this.hide() : this.show()
    this.isOpenValue = !this.isOpenValue
  }

  show() {
    this.dropdownTarget.style.display = "block"
  }

  hide() {
    this.dropdownTarget.style.display = "none"
  }
}
