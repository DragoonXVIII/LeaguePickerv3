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

            Button
            {
                id: infoButton
                height: 36
                width: 36
                background: Rectangle
                {
                    color: "transparent"
                    anchors.fill: parent
                    Image
                    {
                        id: infoButtonImg
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenter: parent.horizontalCenter
                        source: values.sourceDefaultInfoButton
                        width: 24
                        height: 24
                    }
                }
                onClicked:
                {
                    console.log("infoButton clicked")
                }
                onHoveredChanged:
                {
                    if(hovered)
                    {
                        infoButtonImg.source = values.sourceHoveredInfoButton
                    }
                    else
                    {
                        infoButtonImg.source = values.sourceDefaultInfoButton
                    }
                }
            }

            Button
            {
                id: settingsButton
                height: 36
                width: 36
                background: Rectangle
                {
                    color: "transparent"
                    anchors.fill: parent
                    Image
                    {
                        id: settingsButtonImg
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenter: parent.horizontalCenter
                        source: values.sourceDefaultSettingsButton
                        width: 24
                        height: 24
                    }
                }
                onClicked:
                {
                    console.log("settingsButton clicked")
                }
                onHoveredChanged:
                {
                    if(hovered)
                    {
                        settingsButtonImg.source = values.sourceHoveredSettingsButton
                    }
                    else
                    {
                        settingsButtonImg.source = values.sourceDefaultSettingsButton
                    }
                }
            }
        }

        Row
        {
            anchors.top: parent.top
            anchors.bottom: parent.bottom

            Button
            {
                id: minimizeButton
                height: 36
                width: 46
                background: Rectangle
                {
                    color: "transparent"
                    anchors.fill: parent
                    Image
                    {
                        id: minimizeButtonImg
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenter: parent.horizontalCenter
                        source: values.sourceDefaultMinimizeButton
                        width: 10
                        height: 10
                    }
                }
                onClicked:
                {
                    mainWindow.showMinimized()
                }
                onHoveredChanged:
                {
                    if(hovered)
                    {
                        minimizeButtonImg.source = values.sourceHoveredMinimizeButton
                    }
                    else
                    {
                        minimizeButtonImg.source = values.sourceDefaultMinimizeButton
                    }
                }
            }

            Button
            {
                id: maximizeButton
                height: 36
                width: 46
                background: Rectangle
                {
                    color: "transparent"
                    anchors.fill: parent
                    Image
                    {
                        id:maximizeButtonImg
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenter: parent.horizontalCenter
                        source: values.sourceDefaultMaximizeButton
                        width: 10
                        height: 10
                    }
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
                onHoveredChanged:
                {
                    if(hovered)
                    {
                        maximizeButtonImg.source = values.sourceHoveredMaximizeButton
                    }
                    else
                    {
                        maximizeButtonImg.source = values.sourceDefaultMaximizeButton
                    }
                }
            }

            Button
            {
                id: closeButton
                height: 36
                width: 46
                background: Rectangle
                {
                    color: "transparent"
                    anchors.fill: parent
                    Image
                    {
                        id: closeButtonImg
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenter: parent.horizontalCenter
                        source: values.sourceDefaultCloseButton
                        width: 10
                        height: 10
                        cache: false
                    }
                }
                onClicked:
                {
                    mainWindow.windowVisible = 0
                    mainWindow.hide()
                }
                onPressed:
                {
                    closeButtonImg.source = values.sourcePressedCloseButton
                }
                onReleased:
                {
                    closeButtonImg.source = values.sourceDefaultCloseButton
                }
                onHoveredChanged:
                {
                    if(hovered)
                    {
                        closeButtonImg.source = values.sourceHoveredCloseButton
                    }
                    else
                    {
                        closeButtonImg.source = values.sourceDefaultCloseButton
                    }
                }
            }
        }
    }
}
