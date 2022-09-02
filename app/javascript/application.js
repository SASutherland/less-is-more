// Entry point for the build script in your package.json

import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"
import {swiper} from "./plugin/swiper"

console.log('hello from app normal before slider')

var slider = document.getElementById("myRange");
var output = document.getElementById("demo");

slider.addEventListener("input", (event) => {output.innerText = event.target.value;})
output.innerText = slider.value;
console.log(slider.value)

swiper();
document.addEventListener('turbo:load', () => {
})


document.addEventListener('turbo:load', () => {
  var slider = document.getElementById("myRange");
  var output = document.getElementById("demo");
  var refresh = document.getElementById("refresh");

  if(refresh) {
    console.log("hello")
  }

  if(slider) {
    slider.addEventListener("input", (event) => {output.innerText = event.target.value;})
    output.innerText = slider.value;
    console.log(slider.value)
  }
})

console.log('hello from app normal after slider')
