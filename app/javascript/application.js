// Entry point for the build script in your package.json

import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"


document.addEventListener('turbo:load', () => {
  var slider = document.getElementById("myRange");
  var output = document.getElementById("demo");
  var refresh = document.getElementById("refresh");
  console.log("dkshjfbaakebfljehfb")
  if(refresh) {
    console.log("hello")
    // window.reload();
  }

  if(slider) {
    slider.addEventListener("input", (event) => {output.innerText = event.target.value;})
    output.innerText = slider.value; // Display the default slider value
    console.log(slider.value)
  }
})
