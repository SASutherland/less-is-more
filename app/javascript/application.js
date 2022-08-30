// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"
import Typed from 'typed.js'

var options = {
  strings:  ['impact calculator', 'performance tracker','idea generator','community builder'],
  typeSpeed: 60,
  loop: true
}
var typed = new Typed("#typed", options);


