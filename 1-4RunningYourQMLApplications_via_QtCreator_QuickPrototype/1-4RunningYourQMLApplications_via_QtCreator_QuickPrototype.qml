import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Text {
        id: myText
        text: qsTr("Hello, World!!")
        anchors.centerIn: parent
        color: "red"
        font.pixelSize: 14
    }
}
