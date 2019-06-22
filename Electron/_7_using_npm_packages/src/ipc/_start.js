const { app } = require('electron')

var ipcwindows = require('./ipc_windows')

app.on('ready', () => {
    ipcwindows._windows.load_main_window()
})

// Quit when all windows are closed.
app.on('window-all-closed', () => {
    // On macOS it is common for applications and their menu bar
    // to stay active until the user quits explicitly with Cmd + Q
    if (process.platform !== 'darwin') {
        app.quit()
    }
})