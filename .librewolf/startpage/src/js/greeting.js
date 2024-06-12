const greetingElement = document.getElementById("greeting");
const username = "vernette";

function showGreeting() {
  const date = new Date();
  const hour = date.getHours();

  if (hour >= 6 && hour < 12) {
    greeting = "Good morning";
  } else if (hour >= 12 && hour < 18) {
    greeting = "Good afternoon";
  } else if (hour >= 18 && hour < 24) {
    greeting = "Good evening";
  } else {
    greeting = "Good night";
  }

  greetingElement.innerHTML = `${greeting}, ${username}`;
}

showGreeting();
