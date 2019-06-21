const { ipcMain } = require('electron')

ipcMain.on('opened_main_page',(event, arg)=>{
    console.log(arg)
    event.reply('opened_main_page_reply', 'Start to open the page, all content is loaded and the log of the opening is caught.')
})

