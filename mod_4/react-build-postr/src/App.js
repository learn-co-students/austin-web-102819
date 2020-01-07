import React from 'react';
import './App.css';
import Nav from './Nav';
import PostrContainer from './PostrContainer';

const qotd = [
  'It doesn\'t have to be good, it just needs to get done.',
  'I need three quotes. Here\'s one.',
  'It is not the load that breaks you down it is the way you carry it.',
];

function App() {
  return (
    <div className="App">
      <Nav quotes={qotd}></Nav>
      <PostrContainer></PostrContainer>
    </div>
  );
}

export default App;
