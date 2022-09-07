const pierreCart = () => {
  var pi = document.getElementById("pChart");
  var result = document.querySelector(".new_result");
  if(pi) {
  const labels = [
    'My Footprint',
    'My Target',
    'Goal 2030',
  ];

  const data = {
    labels: labels,
    datasets: [{
      label: 'Co2 Footprint (in kg/year)',
      backgroundColor: ['rgba(182, 244, 146, 0.4)', 'rgba(51, 139, 147, 0.4)', 'rgba(165, 42, 42, 0.4)'],
      borderColor: 'rgb(255, 99, 132)',
      data: [result.dataset.survey, result.dataset.result, 2000]
    }]
  };

  const config = {
    type: 'bar',
    data: data,
    options: {
      maintainAspectRatio: false,
    }
  };
    const myChart = new Chart(
    document.getElementById('pChart'),
    config
  );
  }
}

export {pierreCart}
