import QtQuick 2.15
import QtQuick.Layouts 1.3
import QtQuick.Window 2.15
import QtQuick.Controls 2.12
import QtGraphicalEffects 1.0

Rectangle
{
    id: applicationBark
    width: parent.width
    height: 36
    color: "#808080"
    anchors.left: parent.left
    anchors.right: parent.right
    anchors.top: parent.top

    Row
    {
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        x: 0
        width: parent.width - (24+24+12+24+24+24+6)
        Text
        {
            id: logoText
            text: qsTr("LeaguePickerv3")
            anchors.left: logoImage.right
            color: "red"
            font
            {
                family: "Segoe UI"
                kerning: true
                bold: true
                pixelSize: 24
            }
        }
        Image
        {
            id: logoImage
            source: "qrc:/assets/ui/assets/logo.ico"
            anchors.left: parent.left
            x: 2
            width: 32
            height: 32
        }
    }

    Row
    {
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        x: parent.width - (24+24+12+24+24+24+6)
        width: parent.width - (24+24+12+24+24+24+6)
        spacing: 12

        Row
        {
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            Image
            {
                id: about
                anchors.verticalCenter: parent.verticalCenter
                source: "qrc:/assets/ui/assets/logov3.png"
                width: 24
                height: 24
            }

            Image
            {
                id: settings
                anchors.verticalCenter: parent.verticalCenter
                source: "qrc:/assets/ui/assets/logov3.png"
                width: 24
                height: 24
            }
        }

        Row
        {
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            Image
            {
                anchors.verticalCenter: parent.verticalCenter
                id: minimize
                source: "qrc:/assets/ui/assets/minimize-icon.png"
                width: 24
                height: 24
            }

            Image
            {
                anchors.verticalCenter: parent.verticalCenter
                id: maximize
                source: "qrc:/assets/ui/assets/window-close-icon.png"
                width: 24
                height: 24
            }

            Image
            {
                id: close
                anchors.verticalCenter: parent.verticalCenter
                source: "qrc:/assets/ui/assets/window-close-icon.png"
                width: 24
                height: 24
            }
        }
    }
}

//================================================================================================

/*
Rectangle
{
    id: applicationBar
    width: parent.width
    height: 36
    //color: "transparent"
    color: "#808080"
    radius: 6
    anchors
    {
        left: parent.left
        right: parent.right
        top:parent.top
    }

    ColorOverlay
    {
        anchors.fill: applicationBar
        source: applicationBar
        color: "#EE808080"
    }

    DragHandler
    {
        onActiveChanged: if(active)
        {
            mainWindow.startSystemMove()
            mainWindow.windowMaximized = 0
        }
    }

    Row
    { 
        z:1
        anchors
        {
            left: parent.left
        }

        Image
        {
           id: applogo
           source: "qrc:/assets/ui/assets/logo.ico"
           height: 32
           width: 32
           x: parent.x
           y: parent.y
        }

        Text
        {
            id: barTitle
            text: qsTr("LeaguePickerv3")
            color: "#fc5656"
            //#808080
            font.family: "Segoe UI";
            font.pointSize: 16;
            font.bold: true
            font.kerning: true
            x: 32
        }
    }

    Row
    {
        z:1
        anchors
        {
            right: parent.right
            top:parent.top
        }

        Button
        {
            id: minimize
            height: 32
            width: 46
            background: Image
            {

                source: "qrc:/assets/ui/assets/minimize-icon.png"
                fillMode: Image.PreserveAspectFit
                anchors.fill: parent
            }
            onClicked:
            {   
                mainWindow.showMinimized()
            }
        }

        Button
        {
            id: maximize
            height: 32
            width: 46
            background: Image
            {
                source: "qrc:/assets/ui/assets/window-maximize-icon.png"
                fillMode: Image.PreserveAspectFit
                anchors.fill: parent
            }

            onClicked:
            {
                if(mainWindow.windowMaximized)
                {
                    mainWindow.windowMaximized = 0
                    mainWindow.showNormal()
                }
                else
                {
                    mainWindow.windowMaximized = 1
                    mainWindow.showMaximized()
                }
            }


        }

        Button
        {
            id: exit
            height: 32
            width: 46
            background: Image
            {
                source: "qrc:/assets/ui/assets/window-close-icon.png"
                fillMode: Image.PreserveAspectFit
                anchors.fill: parent
            }
            onClicked:
            {
                mainWindow.windowVisible  = 0
                mainWindow.hide()
            }
        }
    } 
}*/

//================================================================================================


import QtQuick 2.15
import QtQuick.Layouts 1.3
import QtQuick.Window 2.15
import QtQuick.Controls 2.12
import QtGraphicalEffects 1.0


Rectangle
{
    id: applicationBar
    width: parent.width
    height: 36
    //color: "transparent"
    color: "#808080"
    radius: 6
    anchors
    {
        left: parent.left
        right: parent.right
        top:parent.top
    }

    /*ColorOverlay
    {
        anchors.fill: applicationBar
        source: applicationBar
        color: "#EE808080"
    }*/

    DragHandler
    {
        onActiveChanged: if(active)
        {
            mainWindow.startSystemMove()
            mainWindow.windowMaximized = 0
        }
    }

    Row
    {
        z:1
        anchors
        {
            left: parent.left
        }

        Image
        {
           id: applogo
           source: "qrc:/assets/ui/assets/logo.ico"
           height: 32
           width: 32
           x: parent.x
           y: parent.y
        }

        Text
        {
            id: barTitle
            text: qsTr("LeaguePickerv3")
            color: "#fc5656"
            //#808080
            font.family: "Segoe UI";
            font.pointSize: 16;
            font.bold: true
            font.kerning: true
            x: 32
        }
    }

    Row
    {
        z:1
        anchors
        {
            right: parent.right
            top:parent.top
        }

        Button
        {
            id: minimize
            height: 32
            width: 46
            background: Image
            {

                source: "qrc:/assets/ui/assets/minimize-icon.png"
                fillMode: Image.PreserveAspectFit
                anchors.fill: parent
            }
            onClicked:
            {
                mainWindow.showMinimized()
            }
        }

        Button
        {
            id: maximize
            height: 32
            width: 46
            background: Image
            {
                source: "qrc:/assets/ui/assets/window-maximize-icon.png"
                fillMode: Image.PreserveAspectFit
                anchors.fill: parent
            }

            onClicked:
            {
                if(mainWindow.windowMaximized)
                {
                    mainWindow.windowMaximized = 0
                    mainWindow.showNormal()
                }
                else
                {
                    mainWindow.windowMaximized = 1
                    mainWindow.showMaximized()
                }
            }


        }

        Button
        {
            id: exit
            height: 32
            width: 46
            background: Image
            {
                source: "qrc:/assets/ui/assets/window-close-icon.png"
                fillMode: Image.PreserveAspectFit
                anchors.fill: parent
            }
            onClicked:
            {
                mainWindow.windowVisible  = 0
                mainWindow.hide()
            }
        }
    }
}
