window.addEventListener('DOMContentLoaded', (event) => {
  console.log('DOM fully loaded and parsed');

  const heading1 = document.getElementById("title");

  

  // 1. click on h1 
  // 2. Change text
  heading1.addEventListener("click", function() {
    heading1.innerText = "Bye friends";
  });




  // document.addEventListener("click", onPageClick)
  // function onPageClick() {
  //   console.log("page is clicked");
  // }

  
});

alert("log in")



