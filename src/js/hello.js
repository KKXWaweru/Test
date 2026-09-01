const input = document.getElementById('name-input');
const button = document.getElementById('greet-button');
const greeting = document.getElementById('greeting');

button.addEventListener('click', () => {
  const name = input.value.trim();
  greeting.textContent = name ? `Hello ${name}!` : 'Please enter a name first.';
});

input.addEventListener('keydown', (event) => {
  if (event.key === 'Enter') button.click();
});