import QtQuick 2.14

/* *** Focus scopes assist in keyboard focus handling when building
reusable QML components.
* *** */

FocusScope {
    width: myRectangleId.width
    height: myRectangleId.height
    property alias color: myRectangleId.color


    Rectangle
    {
        id:myRectangleId
        width: 300
        height: 50
        color: "blue"
        focus: true

        Text {
            id: myText
            text: qsTr("Default")
            anchors.centerIn: parent

        }

        Keys.onPressed: {
            if(event.key===Qt.Key_1)
            {
                myText.text="You pressed the key 1";
            }
            else if (event.key===Qt.Key_2)
            {
               myText.text="You pressed the key 2";
            }
            else
            {
                myText.text="You pressed another key which is "+event.key;
            }
        }

    }

}
