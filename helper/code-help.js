// convert string from snake_case to PascalCase
export function snakeToPascalCase(str) {
  return str
    .split('_')
    .map((word) => word.charAt(0).toUpperCase() + word.slice(1))
    .join('');
}

// convert string from snake_case to camelCase
export function snakeToCamelCase(str) {
  return str
    .split('_')
    .map((word, index) => (index === 0 ? word : word.charAt(0).toUpperCase() + word.slice(1)))
    .join('');
}

// function to write tabs
const TAB = '    ';
export function writeTabs(num = 1) {
  var result = '';
  for (var i = 0; i < num; i++) {
    result += TAB;
  }
  return result;
}

// function to convert a string array to tab + string array
export function writeTabsForArray(arr, tabs = 1) {
  return arr.map((str) => writeTabs(tabs) + str);
}

// copy string to clipboard
export function copyToClipboard(str) {
  navigator.clipboard.writeText(str);
}

export function createModelFileForDownload(str, tableName) {
  // create a new blob object with the contents of the file
  var blob = new Blob([str], { type: 'text/plain;charset=utf-8' });

  // create a new URL object for the blob
  var url = URL.createObjectURL(blob);

  // create a new anchor tag with the URL and filename
  var $link = $('<a>', {
    href: url,
    download: `${tableName}.vb`,
  });

  // add the anchor tag to the document
  $('body').append($link);

  // trigger a click event on the anchor tag to start the download
  $link[0].click();

  // remove the anchor tag from the document
  $link.remove();

  // release the URL object
  URL.revokeObjectURL(url);
}

/**
 * pause for a number of milliseconds, default to 1000
 * @param {number} msec milliseconds
 * @returns {Promise} a promise that resolves after msec
 */
export function pause(msec) {
  return new Promise((resolve, reject) => {
    setTimeout(resolve, msec || 1000);
  });
}

export function digitToEnglishWord(digit) {
  switch (digit) {
    case '0':
      return 'zero';
    case '1':
      return 'one';
    case '2':
      return 'two';
    case '3':
      return 'three';
    case '4':
      return 'four';
    case '5':
      return 'five';
    case '6':
      return 'six';
    case '7':
      return 'seven';
    case '8':
      return 'eight';
    case '9':
      return 'nine';
    default:
      return digit;
  }
}
