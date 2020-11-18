import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    id: myMainWindow
    width: 800
    height: 600
    visible: true
    title: qsTr("QML Syntax Demo")

    property string textToSay: ""

    Row {
        id: mainRow
        anchors.centerIn: parent
        spacing: 20

        Rectangle {
            id: redRectangle
            color: "red"
            width: 150
            height: 150
            radius: 20
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("You clicked red colour")
                    textToSay="red"
                }
            }
        }

        Rectangle {
            id: greenRectangle
            color: "green"
            width: 150
            height: 150
            radius: 20
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    console.log("You clicked green colour")
                    textToSay="green"
                }
            }
        }

        Rectangle {
            id:blueRectangle
            color: "blue"
            width: 150
            height: 150
            radius: 20
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    console.log("You clicked blue colour")
                    textToSay="blue"
                }
            }
        }

        Rectangle {
            id: signalRectangle
            color: "dodgerblue"
            width: 150
            height: 150
            radius: 100
            Text {
                id: myText
                text: textToSay
                anchors.centerIn: parent
            }
            MouseArea {
                id: roundMouseArea
                anchors.fill: parent
                onClicked: {
                    console.log("you clicked the circle");
                    myText.text="loop";
                }
            }
        }
    }
}
