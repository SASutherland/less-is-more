const pierreCart = () => {
  var pi = document.getElementById("pChart");
  var result = document.querySelector(".new_result");
  if(pi) {
  const labels = [
    'My footprint',
    'New Results',
    'Goal',
  ];

  const data = {
    labels: labels,
    datasets: [{
      label: '',
      backgroundColor: ['rgba(182, 244, 146, 0.4)', 'rgba(51, 139, 147, 0.4)', 'rgba(165, 42, 42, 0.4)'],
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
