import React, { Component } from 'react';
import PostList from './PostList';
import PostForm from './PostForm';

export default class PostrContainer extends Component {
  constructor() {
    super();
    this.state = {
      posts: [],
    };
  }

  /*
    Post objects look like: {
      label: label text,
      url: image url
    }
  */

  handleFormSubmit = post => {
    const posts = this.state.posts;
    this.setState({
      posts: [...posts, post],
    });
  };

  render() {
    return (
      <>
        <PostList posts={this.state.posts}></PostList>
        <PostForm handleSubmit={this.handleFormSubmit}></PostForm>
      </>
    );
  }
}
