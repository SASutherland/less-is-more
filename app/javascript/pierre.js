const pierreCart = () => {
  var pi = document.getElementById("pChart");
  var result = document.querySelector(".new_result");
  if(pi) {
  const labels = [
    'Survey results',
    'New Results',
    'Goal',
  ];

  const data = {
    labels: labels,
    datasets: [{
      label: '',
      backgroundColor: ['rgba(255, 99, 132, 0.2)', 'rgba(255, 159, 64, 0.2)', 'rgba(255, 205, 86, 0.2)'],
      borderColor: 'rgb(255, 99, 132)',
      data: [6, result.dataset.result, 2]
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
