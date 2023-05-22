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
    width: parent.width
    height: parent.height
    anchors.fill: parent
    color: "transparent"
    radius: 6
    layer.enabled: true

    Image
    {
        id: background
        source: "qrc:/assets/ui/assets/background.jpg"
        width: parent.width - (parent.border.width * 4)
        height: parent.height - (parent.border.width * 4)
        anchors.centerIn: parent
        visible: true
    }

    ColorOverlay
    {
        anchors.fill: background
        source: background
        color: "#80000000"
    }

    /*Rectangle
    {
        id: menu
        width: 220
        height: parent.height
        radius: 6
        color: values.colorDefaultMenu
    }*/

    Button
    {
        id:testButton
        width: 128
        height: 64
        anchors.centerIn: parent
        onClicked:
        {
            runesimporter.greet("testing button z greetem")
        }

        Rectangle
        {
            width: parent.width
            height: parent.height
            color: "blue"
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
