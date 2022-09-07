const anime = require('animejs');
anime({
  targets: '.dom-attribute-demo input',
  value: [0, 1000],
  round: 1,
  easing: 'easeInOutExpo'
});

export {anime}
