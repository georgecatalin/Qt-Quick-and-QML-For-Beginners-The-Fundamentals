import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Functions and Scope")

    /* *** important : when defining a function at the root level
      The function that is defined at the root level can be called anywhere in the code down below
    *** */


    function minimum(a,b)
    {
        return Math.min(a,b);
    }

    Rectangle {
        id: myRectangle
        width: minimum(300,400)
        height: 100
        anchors.centerIn: parent
        color: "blue"
    }

    MouseArea {
        id:myMouseArea
        anchors.fill: parent

        /* *** important: when a function is defined in an element , the function is accessible inside that
          element or in any children of its. If you wish to call it outside the element or any children
          then you gotta use the id of the element
        *** */
        function saySomething(){
            console.log("Hello, world!");
        }

        onClicked: {
            saySomething();
        }
    }


    Component.onCompleted: {
        console.log("The width of the rectangle is "+minimum(300,500));
        myMouseArea.saySomething(); //the function "saySomething" is recognized only when stating the id of its ListElement
    }
}
