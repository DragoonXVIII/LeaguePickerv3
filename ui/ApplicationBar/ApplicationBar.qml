import QtQuick 2.15
import QtQuick.Layouts 1.3
import QtQuick.Window 2.15
import QtQuick.Controls 2.12
import QtGraphicalEffects 1.0

import "../Values"



Rectangle
{
    id: applicationBar
    width: parent.width
    height: 36
    color: values.colorBar
    anchors.left: parent.left
    anchors.right: parent.right
    anchors.top: parent.top
    radius: 6
    Values{id:values}

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
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        x: 4
        spacing: 12

        Image
        {
            id: logoImage
            source: "qrc:/assets/ui/assets/logo.ico"
            anchors.verticalCenter: parent.verticalCenter
            width: 32
            height: 32
        }

        Text
        {
            id: logoText
            text: qsTr("LeaguePickerv3")
            anchors.verticalCenter: parent.verticalCenter
            color: "#fc5656"
            font.family: "Segoe UI";
            font.pointSize: 16;
            font.bold: true
            font.kerning: true
        }
    }

    Row
    {
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        spacing: 36

        Row
        {
            spacing: 12
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            Image
            {
                id: about
                anchors.verticalCenter: parent.verticalCenter
                source: "qrc:/assets/ui/assets/info.png"
                width: 24
                height: 24
            }

            Image
            {
                id: settings
                anchors.verticalCenter: parent.verticalCenter
                source: "qrc:/assets/ui/assets/settings.png"
                width: 24
                height: 24
            }
        }

        Row
        {
            anchors.top: parent.top
            anchors.bottom: parent.bottom

            Button
            {
                id: minimize
                height: 36
                width: 46
                background: Image
                {
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    source: "qrc:/assets/ui/assets/minimize.afphoto.png"
                    width: 10
                    height: 10
                }
                onClicked:
                {
                    mainWindow.showMinimized()
                }
            }

            Button
            {
                id: maximize
                height: 36
                width: 46
                background: Image
                {
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    source: "qrc:/assets/ui/assets/maximize.afphoto.png"
                    width: 10
                    height: 10
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
                id: close
                height: 36
                width: 46
                background: Image
                {
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    source: "qrc:/assets/ui/assets/close.afphoto.png"
                    width: 10
                    height: 10
                }
                onClicked:
                {
                    mainWindow.windowVisible  = 0
                    mainWindow.hide()
                }
            }
        }
    }
}
