
console.log("Hello from the console!");

fetch(
  "https://api.openweathermap.org/data/2.5/weather?q=London,UK&appid=bcb83c4b54aee8418983c2aff3073b3b"
)
  .then((response) => {
    if (!response.ok) {
      throw response;
    }
    return response.json();
  })
  .then((data) => {
    console.log(data)
    console.log('fetched Success! do you see the data?')
  })
  .catch((errorResponse) => console.error(errorResponse,"Failure!"))

console.log("The AJAX request has been dispatched.");
