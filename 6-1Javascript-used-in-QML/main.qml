import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Javascript used in QML")

    Rectangle {
        id : rectangleId
        width: getHeight() //Javascript used in property binding
        height: 100
        color: x>300 ? "red" : "green" //Javascript used in property binding

        //Javascript used in a signal handler
        onXChanged: {
            console.log("The current value of X is "+x);
        }

        //Javascript used in a custom function
        function getHeight(){
            return height*2;
        }
    }
    //anchors.centerIn: parent

    MouseArea {
        anchors.fill: parent
        drag.target: rectangleId
        drag.axis: Drag.XAxis
        drag.minimumX: 0
        drag.maximumX: parent.width-rectangleId.width
    }

}
