import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Keys Attached Properties Demo")

    Rectangle {
        id:myRectangle
        width: 200
        height: 50
        color: "dodgerblue"
        anchors.centerIn: parent
        focus: true

        Keys.onDigit1Pressed: {
            console.log("Particular key event handler: key 1 was touched");
            event.accepted=false;
        }

        Keys.onDigit5Pressed: {
            if(event.modifiers===Qt.ControlModifier)
            {
                console.log("Particular: You pressed Control +5");
            }
            else
            {
                console.log("Particular: Yoc pressed 5");
            }
            event.accepted=false;
        }


        Keys.onPressed: {
            if(event.key==Qt.Key_1)
            {
                console.log("General key event handler: key 1 was touched");
            }

            if ((event.key===Qt.Key_5) && (event.modifiers===Qt.ControlModifier))
            {
                console.log("General: You pressed Control+5");
            }

        }
    }
}
