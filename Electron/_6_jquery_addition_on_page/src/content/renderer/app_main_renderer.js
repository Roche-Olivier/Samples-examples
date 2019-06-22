const { ipcRenderer } = require('electron')
console.log("renderer loaded")

document.addEventListener('readystatechange', event => {

    if (event.target.readyState === "interactive") {      //same as:  document.addEventListener("DOMContentLoaded"...   // same as  jQuery.ready
        console.log("All HTML DOM elements are accessible");
    }

    if (event.target.readyState === "complete") {
        console.log("Now external resources are loaded too, like css,src etc... ");
        ipcRenderer.send('opened_main_page', 'User opened page, all content loaded.')
    }

});


