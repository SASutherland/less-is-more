import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dropdown-menu"
export default class extends Controller {
  static targets = ["dropdown"]
  connect() {
    console.log("hello from connect")
  }
  
  menu() {
    console.log("hello from controller action")
  }
}
