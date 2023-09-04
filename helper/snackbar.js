// to use this function, add html element with id="snackbar" in your html file
export function showSnackbar(text) {
  // Get the snackbar DIV
  var x = $('#snackbar')[0];

  // change the text
  x.innerText = text;

  // Add the "show" class to DIV
  x.className = 'show';

  // After 3 seconds, remove the show class from DIV
  setTimeout(function () {
    x.className = x.className.replace('show', '');
  }, 3000);
}
