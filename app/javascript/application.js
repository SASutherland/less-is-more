// Entry point for the build script in your package.json

import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"
import {swiper} from "./plugin/swiper"

console.log('hello from app normal before slider')


// var slider = document.getElementById("myRange");
// var output = document.getElementById("demo");

// slider.addEventListener("input", (event) => {output.innerText = event.target.value;})
// output.innerText = slider.value;
// console.log(slider.value)

swiper();

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

  const myChart = document.querySelector("#myChart");

  if(myChart) {
    const labels_pie = [
      'Transport',
      'Food',
      'House',
      'Leisure',
    ];

    const transport = document.querySelector(".transport")
    const food = document.querySelector(".food")
    const house = document.querySelector(".house")
    const leisure = document.querySelector(".leisure")

    const data = {
      labels: labels_pie,
      datasets: [{
        label: 'My First dataset',
        backgroundColor: ['#FF839D', '#5CAB7D', '#349DE4', '#FFD77C'] ,

        data: [transport.dataset.value, food.dataset.value, house.dataset.value, leisure.dataset.value]
      }]
    };
    const config = {
      type: 'doughnut',
      data: data,
      options: {}
    };

    const myChart = new Chart(
      document.getElementById('myChart'),
      config
    );
    //-----------------------------------------

    const radarLabels = [
      'Car',
      'Plane',
      'Train',
      'Fish',
      'Meat',
      'Vegetables',
      'Heating',
  ];

    const radarData = {
      labels: radarLabels,
      datasets: [{
      label: 'Your Country',
      data: [1441, 318, 272,101, 786, 202 ,990],
      fill: true,
      backgroundColor: 'rgba(255, 99, 132, 0.2)',
      borderColor: 'rgb(255, 99, 132)',
      pointBackgroundColor: 'rgb(255, 99, 132)',
      pointBorderColor: '#fff',
      pointHoverBackgroundColor: '#fff',
      pointHoverBorderColor: 'rgb(255, 99, 132)'
    },
    {
      label: 'My Footprint',
      data: [700, 700, 500, 200, 200, 400 ,800],
      fill: true,
      backgroundColor: '#7A56AB',
      borderColor: '#7A56AB',
      pointBackgroundColor: '#7A56AB',
      pointBorderColor: '#fff',
      pointHoverBackgroundColor: '#fff',
      pointHoverBorderColor: 'rgb(255, 99, 132)'
    }
    ]
    }
    const radarConfig = {
      type: 'radar',
      data: radarData,
      options: {
        elements: {
          line: {
            borderWidth: 3
          }
        }
      },
    };
    //--------------------------------------

    const myRadar = new Chart(
      document.getElementById('myRadar'),
      radarConfig
    );
    console.log(myRadar)
  }
})

console.log('hello from app normal after slider')
