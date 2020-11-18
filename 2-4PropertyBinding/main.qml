import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        id: redRectangle
        color:"red"
        width: 50
        height: width*1.5 //this is property binding
    }

    Rectangle {
        id: blueRectangle
        color: "blue"
        width: 100
        height: 100
        anchors.bottom: parent.bottom
        MouseArea {
            anchors.fill: parent;
            onClicked: {
                redRectangle.width=redRectangle.width+10;
            }
        }
    }

    Rectangle {
        id:greenRectangle
        color: "green"
        width: 100
        height: 100
        anchors.bottom: parent.bottom
        anchors.left:blueRectangle.right
        MouseArea{
            anchors.fill: parent
            onClicked: {
                /*
                redRectangle.height=redRectangle.width *2; //this breaks the contract of property binding and sets it like a static value
                */
                redRectangle.height=Qt.binding(function(){return redRectangle.width*2});
                //this notifies Qt system that it replaces momentarily (only) the binding from line 14
            }
        }
    }
}
