document.addEventListener("DOMContentLoaded", function(){
  var canvas = document.getElementById('mycanvas');
  let ctx = canvas.getContext('2d');
  ctx.canvas.width = 500;
  ctx.canvas.height = 500;
  ctx.fillStyle = 'rgb(200,0,0)';
  ctx.fillRect(300, 50, 100, 500);
  // ctx.beginPath();
  // ctx.strokeStyle = '#00FFFF';
  // ctx.arc(100,75,50,0,2*Math.PI);
  // ctx.linewidth = 10;
  // let fillStyle = '#9400D3';
  // ctx.fill();
  // ctx.stroke();

  ctx.beginPath();
  ctx.moveTo(75, 50);
  ctx.lineTo(100, 75);
  ctx.lineTo(100, 25);
  ctx.fill();
});
