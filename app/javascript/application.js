// Entry point for the build script in your package.json

import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"







// var options = {
//   strings:  ['impact calculator', 'performance tracker','idea generator','community builder'],
//   typeSpeed: 60,
//   loop: true
// }
// var typed = new Typed("#typed", options);


// import { initSortable } from "../javascript/plugin/init_sortable"
// initSortable()

//


var slider = document.getElementById("myRange");
var output = document.getElementById("demo");

slider.addEventListener("input", (event) => {output.innerText = event.target.value;})
output.innerText = slider.value; // Display the default slider value
console.log(slider.value)


