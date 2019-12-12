window.addEventListener('DOMContentLoaded', (event) => {

  var button = document.querySelector("button");

  // click the button and add github info on page
  // fetch THEN do the other stuff
  button.addEventListener("click", function () {
    fetch("https://api.github.com/users/faithe1937")
    .then(res => res.json())
    .then(jsonData => addUserGithubInfo(jsonData));
    
  })


  function addUserGithubInfo(userInfo) {
    var p = document.createElement("p");
    p.textContent= `Login: ${userInfo.login} Followers: ${userInfo.followers}`;
    document.querySelector("body").appendChild(p);
  }

});

