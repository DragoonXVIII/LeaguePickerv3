import QtQuick 2.15
import QtQuick.Layouts 1.3
import QtQuick.Window 2.15
import QtQuick.Controls 2.12
import QtWinExtras 1.15
import Qt.labs.platform 1.1



SystemTrayIcon
{
    id: appSystemTrayIcon
    visible: true
    icon.source: "qrc:/assets/ui/assets/logov3.png"
    menu: Menu
    {
        MenuItem
        {
            text: qsTr("Github")
            onTriggered: Qt.openUrlExternally("https://github.com/DragoonXVIII")
        }
        MenuItem
        {
            text: qsTr("Restore")
            onTriggered:
            {
                console.log("Restore clicked")
                if(mainWindow.windowVisible === 0)
                {
                    if(mainWindow.windowMaximized)
                    {
                        mainWindow.windowVisible  = 1
                        mainWindow.windowMaximized = 1
                        mainWindow.raise()
                        mainWindow.showMaximized()

                    }
                    else
                    {
                        mainWindow.windowVisible  = 1
                        mainWindow.windowMaximized = 0
                        mainWindow.raise()
                        mainWindow.showNormal()
                    }
                }
            }
        }
        MenuItem
        {
            text: qsTr("Quit")
            onTriggered: Qt.quit()
        }
    }

}
