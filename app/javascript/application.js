// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"
import Typed from 'typed.js'
// import  data from "controllers/doughnut_chart.js";

var options = {
  strings:  ['impact calculator', 'performance tracker','idea generator','community builder'],
  typeSpeed: 60,
  loop: true
}
var typed = new Typed("#typed", options);


//Slider form//
var slider = document.getElementById("myRange");
var output = document.getElementById("demo");
output.innerHTML = slider.value; // Display the default slider value

// Update the current slider value (each time you drag the slider handle)
slider.oninput = function() {
  console.log()
  output.innerHTML = this.value;
}

$("#sortable").sortable();

// document.addEventListener('turbolinks:load', () => {
//   data();
// });
