import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Text Edit Demo")

    Flickable {
        id: myFlickable
        width: myTextEdit.width
        contentHeight: myTextEdit.implicitHeight
        height: 300
        clip: true
        anchors.centerIn: parent

        TextEdit {
            id: myTextEdit
            width: 240
            text: "The Qt QML module provides a framework for developing applications and libraries with the QML language. It defines and implements the language and engine infrastructure, and provides an API to enable application developers to extend the QML language with custom types and integrate QML code with JavaScript and C++. The Qt QML module provides both a QML API and a C++ API."
            + "Note that while the Qt QML module provides the language and infrastructure for QML applications, the Qt Quick module provides many visual components, model-view support, an animation framework, and much more for building user interfaces."
            wrapMode: TextEdit.WordWrap
            textFormat: TextEdit.RichText
            font.family: "Helvetica"
            font.pointSize: 20
            color: "blue"
            focus: true
            onEditingFinished: {
                console.log("I added the text edit "+ text )
            }
        }

    }

    Rectangle {
        id: myRectangle
        height: 200
        width: 300
        color: "red"
        anchors.top: myFlickable.bottom

        MouseArea {
            anchors.fill: parent
            onClicked: {
                myRectangle.focus=true;
                console.log("This is what I added "+ myTextEdit.text)
            }

        }
    }

}
