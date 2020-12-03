import QtQuick 2.0

Item {

    property int count: 10

    //expose the color so that users can modify it externally of this qml
    property alias  rectangleColor: myRectangle.color

    //expose the width and height so that it can be modified outside this qml
    width: myRectangle.width
    height: myRectangle.height


    //step 1. declare the signal
    signal notify(string myMessage)

    //step 4. connect the signal with the slot version 3
    property Receiver target: null

    onTargetChanged: {
        notify.connect(target.listen);
    }

    Rectangle {
        id: myRectangle
        width: 300
        height: 400
        color: "red"

        Text {
            id: myText
            anchors.centerIn: parent
            font.pointSize: 12
            text: count
        }

        MouseArea {
            id: myMouseArea
            anchors.fill: parent
            onClicked: {
                count++;
                //step 2. fire up the signal
                notify(count);
            }
        }
    }


}
