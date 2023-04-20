import QtQuick 2.15
import QtQuick.Layouts 1.3
import QtQuick.Window 2.15
import QtQuick.Controls 2.12
import QtWinExtras 1.15
import Qt.labs.platform 1.1

import "ui/ApplicationBar"
import "ui/ApplicationSpace"
import "ui/ApplicationSystemTrayIcon"
import "ui/Values"



ApplicationWindow
//Window
{

    id: mainWindow
    title: qsTr("LeaguePickerv3")
    width: 1280
    height: 760
    minimumWidth: 1280
    minimumHeight: 760
    color: "transparent"
    visible: true
    flags: Qt.Window | Qt.FramelessWindowHint

    //Additional item that will handle const values.
    Values{id:values}
    //Additional property values are needed to handle previous state of window to prevent from bugs.
    property int windowMaximized: 0    // 0 if mainWindow not maximized, 1 if mainWindow maximized
    property int windowVisible : 1     // 0 if mainWindow hidden, 1 if mainWindow visible
    //Function to handle visibility changes
    onVisibilityChanged:
    {
        if(mainWindow.windowVisible  === 0)
        {
            return
        }

        if(mainWindow.visibility === 3)
        {
            return
        }

        if(mainWindow.windowVisible  === 1)
        {
            //console.log("windowMaximized:", windowMaximized)
            if(mainWindow.windowMaximized === 1)
            {
                mainWindow.showMaximized()
            }
            else
            {
                mainWindow.showNormal()
            }
            return
        }

        if(visibility !== 3)
        {
            if(mainWindow.windowMaximized === 1)
            {
                mainWindow.showMaximized()
            }
            else
            {
                mainWindow.showNormal()
            }
        }
    }
//============================================================================================

    ApplicationSystemTrayIcon
    {
        id :applicationSystemTrayIcon
    }

 //============================================================================================

    Rectangle
    {
        id: appRectangle
        width: parent.width
        height: parent.height
        anchors.fill: parent
        color: "transparent"
        clip: true

        Rectangle
        {
            id: appSpaceborder
            anchors.fill: parent
            z: 1 //over everything else overlay (custom frame)
            color: "transparent"
            border
            {
                color: values.colorBar
                width: 2
            }
            radius: 6
            clip: true

        }

        ApplicationSpace
        {
            id:applicationSpace
        }
        ApplicationBar
        {
            id: applicationBar
        }
    }

    /*ApplicationBar
    {
        id: applicationBar
    }*/
}

/*onVisibleChanged:
{
    console.log("MainWindow visibility changed:", visible)
}*/
