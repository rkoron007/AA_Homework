console.log("Hello from the JavaScript console!");

// Your AJAX request here

// Add another console log here, outside your AJAX request
const wet = $.ajax({
  url: 'http://api.openweathermap.org/data/2.5/weather?q=new%20york,US&appid=bcb83c4b54aee8418983c2aff3073b3b',
  type: 'GET',
  success: function(weather){
    console.log(weather);
  },
  error: function(errMsg){
    console.log(errMsg);
  }
});

console.log(wet);
