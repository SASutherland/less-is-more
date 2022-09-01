// Entry point for the build script in your package.json

import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"
import {swiper} from "./plugin/swiper"

// var slider = document.getElementById("myRange");
// var output = document.getElementById("demo");

// slider.addEventListener("input", (event) => {output.innerText = event.target.value;})
// output.innerText = slider.value; // Display the default slider value
// console.log(slider.value)

swiper();
document.addEventListener('turbo:load', () => {
})
