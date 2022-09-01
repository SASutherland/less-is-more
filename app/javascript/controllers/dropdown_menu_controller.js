import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dropdown-menu"
export default class extends Controller {

  static targets = ["dropdown"]
  static values = { isOpen: { type: Boolean, default: false } }

  connect() {
    console.log("hello from connect")
  }

  menu() {
    console.log("hello from menu(click)")
    console.log(this.dropdownTarget)
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
