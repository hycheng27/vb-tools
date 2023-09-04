import { copyToClipboard } from '../helper/code-help.js';
import { showSnackbar } from '../helper/snackbar.js';

function onConvertToFormula() {
  // get the input from textarea with id = convertor-input
  var input = document.getElementById('convertor-input').value;
}

/// Add event listeners ///

// convert model
$('#convertor-button').click(onConvertToFormula);

// copy and clear
$('#clear-input-btn').click(() => {
  $('#convertor-input').val('');
});
$('#copy-input-btn').click(() => {
  copyToClipboard($('#convertor-input').val());
  showSnackbar('Copied input to clipboard.');
});
$('#clear-output-btn').click(() => {
  $('#convertor-output').val('');
});
$('#copy-output-btn').click(() => {
  copyToClipboard($('#convertor-output').val());
  showSnackbar('Copied output to clipboard.');
});

/// End of Add event listeners ///
