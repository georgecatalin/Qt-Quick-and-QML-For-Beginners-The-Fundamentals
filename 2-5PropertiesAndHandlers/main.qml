import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Properties and Handlers")

    property  string myFirstName: "George" //when creating the property, Qt creates automatically a signal that follows changes  related to that property type name: value
    onMyFirstNameChanged: {
        console.log("The new Property 'myFirstName' is "+myFirstName);
    }

    Rectangle {
        id: myRectangle
        width: 300
        height: 100
        /* ****************************************************************
            color QML Basic Type
            By a SVG color name, such as "red", "green" or "lightsteelblue".
            The complete list of colours is here : https://www.w3.org/TR/SVG/types.html#ColorKeywords
        * *************************************************************** */
        color: "dodgerblue"
        anchors.centerIn: parent
        MouseArea {
            anchors.fill: parent
            onClicked: {
                myFirstName="Catalin";
            }
        }
    }

    //this is triggered when all items have been loaded
    Component.onCompleted: {
        console.log("The property myFirstName is " + myFirstName);
    }
}
