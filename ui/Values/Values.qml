import QtQuick 2.15

Item
{
    id: values
               // #181A20 #808080
    readonly property color colorDefaultMenu: "#181A20"     // should be same like colorBar
    readonly property color colorHoveredMenu: "#181A20"
    readonly property color colorAppSpaceComponent: "#808080"

    //ApplicationBar - color
    readonly property color colorBar: "#181A20"
    //ApplicationBar - Icons
    readonly property string sourceDefaultMinimizeButton: "qrc:/assets/ui/assets/basicWindowNavigation/minimizeDefault.png"
    readonly property string sourceHoveredMinimizeButton: "qrc:/assets/ui/assets/basicWindowNavigation/minimizeHoveredpng.png"

    readonly property string sourceDefaultRestoreButton: "qrc:/assets/ui/assets/basicWindowNavigation/restoreDefault.png"
    readonly property string sourceHoveredRestoreButton: "qrc:/assets/ui/assets/basicWindowNavigation/restoreHovered.png"
    readonly property string sourceDefaultMaximizeButton: "qrc:/assets/ui/assets/basicWindowNavigation/maximizeDefault.png"
    readonly property string sourceHoveredMaximizeButton: "qrc:/assets/ui/assets/basicWindowNavigation/maximizeHovered.png"

    readonly property string sourceDefaultCloseButton: "qrc:/assets/ui/assets/basicWindowNavigation/closeDefault.png"
    readonly property string sourceHoveredCloseButton: "qrc:/assets/ui/assets/basicWindowNavigation/closeHovered.png"
    readonly property string sourcePressedCloseButton: "qrc:/assets/ui/assets/basicWindowNavigation/closePressed.png"

    readonly property string sourceDefaultInfoButton: "qrc:/assets/ui/assets/extraWindowNavigation/infoDefault.png"
    readonly property string sourceHoveredInfoButton: "qrc:/assets/ui/assets/extraWindowNavigation/infoHovered.png"

    readonly property string sourceDefaultSettingsButton: "qrc:/assets/ui/assets/extraWindowNavigation/settingsDefault.png"
    readonly property string sourceHoveredSettingsButton: "qrc:/assets/ui/assets/extraWindowNavigation/settingsHovered.png"
}
