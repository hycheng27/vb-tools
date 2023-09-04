import { copyToClipboard } from '../helper/code-help.js';
import { showSnackbar } from '../helper/snackbar.js';

function getSubstituteFormula(chars, subToChar, cell, i) {
  if (i == undefined) {
    i = chars.length - 1;
  }
  if (i == 0) {
    return `SUBSTITUTE(${cell},"${chars[i]}","${subToChar}")`;
  } else {
    var chainedFormulas = getSubstituteFormula(chars, subToChar, cell, i - 1);
    return `SUBSTITUTE(${chainedFormulas},"${chars[i]}","${chars[i] == ')' ? '' : subToChar}")`; // special case for ')': substitute with empty string
  }
}

function onConvertToFormula() {
  // get the input from textarea with id = convertor-input
  var input = $('#convertor-input').val();
  var subToChar = $('#convertor-input-substitute-char').val();
  var cell = $('#convertor-input-cell').val();

  // convert the input to formula
  var output = '=' + getSubstituteFormula(input.split('\n'), subToChar, cell.length > 0 ? cell : 'A1');

  // set the output to textarea with id = convertor-output
  $('#convertor-output').val(output);
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
