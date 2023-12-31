import QtQuick 2.15
import QtQuick.Window 2.15
//
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.4

ApplicationWindow {
    id: rootId
    width: 360
    height: 520
    visible: true
    title: qsTr("Drawer Demo ")

    header: ToolBar {
        height: 50
        background: Rectangle {
            color: "mintcream"
        }

        RowLayout {
            spacing: 20
            anchors.fill: parent

            ToolButton {
                background: Rectangle {
                    color: "mintcream"
                }

                icon.source: "images/sai baba.jpg"

                onClicked: {
                    console.log("ToolButton Clicked")
                    //open drawerId
                    drawerId.open()
                }
            }

            Label {
                id: titleLabel
                text: "Drawer Demo"
                font.pixelSize: 20
                elide: Label.ElideRight
                horizontalAlignment: Qt.AlignHCenter
                verticalAlignment: Qt.AlignVCenter
                Layout.fillWidth: true
            }
        }
    }

    Drawer {
        id: drawerId
        width: Math.min(rootId.width,rootId.height) * (2/3)
        height: rootId.height
        interactive: true

        ColumnLayout {
            spacing: 0
            width: parent.width
            Button {
                width: parent.width
                height: 50
                text: "Item1"
                font.pointSize: 20
                background: Rectangle {
                    color: "beige"
                }
                Layout.fillWidth: true

                onClicked: {
                    console.log("Clicked on item1")
                    contentRectId.color = "red"
                    drawerId.close()
                }
            }
            Button {
                width: parent.width
                height: 50
                text: "Item2"
                font.pointSize: 20
                background: Rectangle {
                    color: "yellowgreen"
                }
                Layout.fillWidth: true

                onClicked: {
                    console.log("Clicked on item2")
                    contentRectId.color = "green"
                    drawerId.close()
                }
            }
            Button {
                width: parent.width
                height: 50
                text: "Item1"
                font.pointSize: 20
                background: Rectangle {
                    color: "dodgerblue"
                }
                Layout.fillWidth: true

                onClicked: {
                    console.log("Clicked on item3")
                    contentRectId.color = "blue"
                    drawerId.close()
                }
            }
        }
    }
    Rectangle {
        id: contentRectId
        anchors.fill: parent
        color: "lightsteelblue"
    }
}
