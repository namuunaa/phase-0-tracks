console.log("The script is running!!!")

function changeheader() {
  var header = document.getElementById("beginning");
  header.style.border = "10px solid purple";
}

changeheader();

function changep(event){
  event.target.style.color = "Pink";
}

var para = document.getElementById("text");
para.addEventListener("click", changep);