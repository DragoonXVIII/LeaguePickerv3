import QtQuick 2.15
import QtGraphicalEffects 1.0
import QtQuick.Layouts 1.3
import QtQuick.Window 2.15
import QtQuick.Controls 2.12
import QtWinExtras 1.15
import Qt.labs.platform 1.1



Rectangle
{
    id: applicationSpace
    z:0
    width: mainWindow.width
    height: mainWindow.height
    anchors.fill: parent
    color: "transparent"
    border
    {
        width: 1
        color: "#808080"
    }
    radius: 6
    layer.enabled: true
    clip:  true

    Image
    {
        id: background
        source: "qrc:/assets/ui/assets/background.jpg"
        //fillMode: Image.PreserveAspectFit
        width: parent.width - (appSpaceborder.border.width * 2)
        height: parent.height - (appSpaceborder.border.width * 2)
        anchors.centerIn: parent

        smooth: true
        sourceSize.height: background.height
        sourceSize.width: background.width
        visible: true
    }

    ColorOverlay
    {
        anchors.fill: background
        source: background
        color: "#80000000"
    }

    Button
    {
        width: 128
        height: 64
        anchors.centerIn: parent
        onClicked:
        {
            console.log("no elo ziomeczku to znowu ja bogaj")
        }

        Rectangle
        {
            width: parent.width
            height: parent.height
            color: "#808080"
            radius: 6
            border.color: "purple"
            border.width: 3
            Text
            {
                anchors.centerIn: parent
                text: qsTr("GIGA_test")
                color: "#fc5656"
                font.family: "Segoe UI";
                font.pointSize: 16;
                font.bold: true
                font.kerning: true
            }
        }
    }
}

//color: "#808080"
//border: 3px solid gray;
//border-radius: 6px;
