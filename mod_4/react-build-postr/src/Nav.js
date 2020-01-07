import React, { Component } from 'react';

export default class Nav extends Component {
  randomQuote = () =>
    this.props.quotes[Math.floor(Math.random() * this.props.quotes.length)];

  render() {
    return (
      <div className="nav">
        <h1>POSTR</h1>
        <p>{this.randomQuote()}</p>
      </div>
    );
  }
}
