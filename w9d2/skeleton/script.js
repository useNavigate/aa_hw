document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });

  // adding SF places as list items

  //we need to select input box for the value to add to new li
  const favoriteInput = document.querySelector(".favorite-input");
  //we need to select the submit input to add 'addeventlistener'
  const favoriteInputSubmit = document.querySelector(".favorite-submit")
  favoriteInputSubmit.addEventListener("click", (e) => {
    e.preventDefault();
    const favoriteInputValue = favoriteInput.value;

    const favoriteUl = document.getElementById("sf-places");
    const newFavoriteLi = document.createElement("li");
    newFavoriteLi.textContent = favoriteInputValue;
    favoriteUl.appendChild(newFavoriteLi);
    favoriteInputValue = "";

  });

  // adding new photos

  // --- your code here!



});





