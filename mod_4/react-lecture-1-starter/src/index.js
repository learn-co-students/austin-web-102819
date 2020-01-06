// import React from 'react';

const main = document.getElementById('main');
const element = React.createElement('h1', {}, [
React.createElement('p', {}, 'paragraphh one'),
React.createElement('div', {}, 'par two')
]
);
ReactDOM.render(element, main);
