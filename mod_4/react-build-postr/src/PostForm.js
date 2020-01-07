import React, { Component } from 'react';

export default class PostForm extends Component {
  constructor() {
    super();
    this.state = {
      label: '',
      url: '',
    };
  }

  handleChange = e => {
    this.setState({ [e.target.name]: e.target.value });
  };

  handleSubmit = e => {
    e.preventDefault();
    this.props.handleSubmit({ label: this.state.label, url: this.state.url });
    this.setState({ label: '', url: '' });
  };

  render() {
    return (
      <div className="post-form">
        <h2>New Post</h2>
        <form onSubmit={this.handleSubmit}>
          <div>
            Label:{' '}
            <input
              name="label"
              value={this.state.label}
              onChange={this.handleChange}
            ></input>
          </div>
          <div>
            Image URL:{' '}
            <input
              name="url"
              value={this.state.url}
              onChange={this.handleChange}
            ></input>
          </div>
          <button type="submit">GO</button>
        </form>
      </div>
    );
  }
}
