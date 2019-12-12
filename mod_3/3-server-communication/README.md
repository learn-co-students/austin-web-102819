# Client Server Communication

1. Single page applications
2. Github api
  - https://developer.github.com/v3/
  - https://api.github.com/
3. 








































```
  fetch("api route")
  .then(res => res.json())
  .then(variable => things things)
  .catch(error => console.log("Here's the error:", error));
```


```
fetch("http://localhost:3000/books", {
  method: "POST",
  headers: {
    "Content-Type": "application/json",
  },
  body: JSON.stringify({
    title: 'The Fifth Season',
    author: 'N.K. Jemisin',
    img: 'https://images-na.ssl-images-amazon.com/images/I/61XfS2XCw3L._SL160_SX135_.jpg'
  })
});
```