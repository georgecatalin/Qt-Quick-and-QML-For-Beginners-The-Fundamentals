import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Building Custom Components")


//    Column {
//        spacing: 20

//        Rectangle {
//            width: 300
//            height: 100
//            color: "red"
//        }

//        Rectangle {
//            width: 300
//            height: 100
//            color: "green"
//        }
//    }

    Rectangle {
        id:myRectangle
        width: myText.implicitWidth+20
        height: myText.implicitHeight+20
        color: "red"
        border { color: "blue";width:3}

        Text {
            id:myText
            text: "This is button"
            anchors.centerIn: parent
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log("You clicked on "+myText.text);
            }
        }
    }

    /* ***************************************************************************************************
      to create a new custom component copy the lines from 27 to 46 to the new Qt Component MyCustomButton
      ************************************************************************************************* */

    Column{
        //instantiate the newly created Component
        MyCustomButton {
            //buttonText: "This is the first button"
            rootLevelButtonText: "This is the first button"
            onButtonClickedAtRootLevel:{
                console.log("You clicked on button 1 from main.qml.");
            }



        }

        //instantiate the newly created Component and set its x coordinate
        MyCustomButton {
            //buttonText: "This is the second button"
            rootLevelButtonText: "This is the second button"


            onButtonClickedAtRootLevel: {
                console.log("You clicked on button 2 from main.qml.");
            }
        }

    }


}
