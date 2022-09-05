// Entry point for the build script in your package.json

import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"
import {swiper} from "./plugin/swiper"

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
    console.log("refreshed")
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
    const country = document.querySelector(".country")

    const data = {
      labels: labels_pie,
      datasets: [{
        label: 'My First dataset',
        backgroundColor: ['#FF839D', '#5CAB7D', '#349DE4', '#FFD77C'] ,

        data: [country.dataset.value, transport.dataset.value, food.dataset.value, house.dataset.value, leisure.dataset.value]
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
      'Transport',
      'Meat',
      'Heating'

  ];

    const transportcountry = document.querySelector(".transportcountry")
    const foodcountry = document.querySelector(".foodcountry")
    const housecountry = document.querySelector(".housecountry")
    const leisurecountry = document.querySelector(".leisurecountry")


    const radarData = {
      labels: radarLabels,
      datasets: [{
      label: country.dataset.value,
      data: [transportcountry.dataset.value, foodcountry.dataset.value, housecountry.dataset.value, leisurecountry.dataset.value],

      fill: true,
      backgroundColor: 'rgba(255, 99, 132, 0.2)',
      borderColor: 'rgb(255, 99, 132)',
      pointBackgroundColor: 'rgb(255, 99, 132)',
      pointBorderColor: '#fff',
      pointHoverBackgroundColor: '#fff',
      pointHoverBorderColor: 'rgb(255, 99, 132)'
    },
    {
      label: 'My Impact',
      // data: [2000, 2000, 4000, 200,2000],
      data: [transport.dataset.value, food.dataset.value, house.dataset.value, leisure.dataset.value],
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
    console.log(transportcountry.dataset.value, foodcountry.dataset.value, housecountry.dataset.value, leisurecountry.dataset.value)
    const myRadar = new Chart(
      document.getElementById('myRadar'),
      radarConfig
    );
    console.log(myRadar)
  }
})

