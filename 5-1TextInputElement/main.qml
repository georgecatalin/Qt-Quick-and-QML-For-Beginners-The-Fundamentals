import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Text Input Element Demo")


    Row {
        x:10
        y:10
        spacing: 20

        Rectangle {
            id:myFirstNameRectangle
            color: "beige"
            width: myFirstNameText.implicitWidth +20
            height: myFirstNameText.implicitHeight+20

            Text {
                id: myFirstNameText
                text: qsTr("First Name:")
                anchors.centerIn: parent
            }
        }

        Rectangle {
            color: "beige"
            width: myFirstNameTextInput.implicitWidth+20
            height: myFirstNameTextInput.implicitHeight+20


            TextInput {
                id:myFirstNameTextInput
                anchors.centerIn: parent
                text: "Type in your first name"
                onEditingFinished: {
                    console.log("I have finished editing first name and added "+text);
                }
            }
        }
    }

    Row {
        x:10
        y:60
        spacing: 20

        Rectangle {
            id: myLastNameRectangle
            color: "beige"
            width: myLastNameText.width+20
            height: myLastNameText.height+20

            Text {
                id: myLastNameText
                anchors.centerIn: parent
                text: "Last Name :"
            }
        }

        Rectangle {
           color: "beige"
           width: myLastNameTextInput.width +20
           height: myLastNameTextInput.height+20

           TextInput {
               id:myLastNameTextInput
               anchors.centerIn: parent
               text: "Type in your last name"
               onEditingFinished: {
                   console.log("I finished editing the last name and added "+ text);
               }
           }
        }
    }
}
