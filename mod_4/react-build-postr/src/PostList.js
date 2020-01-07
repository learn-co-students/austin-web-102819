import React, { Component } from 'react';

export default class PostList extends Component {
  render() {
    return (
      <div className="post-list">
        <h2>Post List</h2>
        <ul>
          {this.props.posts.map(post => (
            <li key="post.label">
              {post.label}
              <img src={post.url} alt={post.label}></img>
            </li>
          ))}
        </ul>
      </div>
    );
  }
}
