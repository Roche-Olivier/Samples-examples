const { ipcMain } = require('electron')

ipcMain.on('opened_main_page',(event, arg)=>{
    console.log(arg)
})

