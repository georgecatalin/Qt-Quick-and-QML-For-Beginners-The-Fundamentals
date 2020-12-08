import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Mouse Area Demo")

    Rectangle {
        id:myRectangle
        width: parent.width
        height: 200
        color: "beige"

        Rectangle {
            id:myMovingRectangle
            width: 50
            height: width
            color: "red"
        }




        /* *** A MouseArea is an invisible item that is typically used in conjunction with a visible item in order to provide
        mouse handling for that item.
        *** */

        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log(mouse.x);
                myMovingRectangle.x=mouse.x;

                /* ***  This property holds whether hover events are handled.
                  By default, mouse events are only handled in response to a button event, or when a button is pressed.
                  Hover enables handling of all mouse events even when no mouse button is pressed.
                *** */
            }

            /* *** This signal is emitted in response to both mouse wheel and trackpad scroll gestures.
              The wheel parameter provides information about the event, including the x and y position, any buttons currently
             pressed, and information about the wheel movement, including angleDelta and pixelDelta.
             *** */

            onWheel: {
                console.log("wheel x is "+ wheel.x + "wheel y is "+ wheel.y +" and the angle is "+ wheel.angleDelta);
            }

            onHoveredChanged: {
                hoverEnabled=true;

                /* *** This property holds whether the mouse is currently inside the mouse area. *** */
                if (containsMouse===true)
                {
                    myRectangle.color="green";
                }
                else
                {
                    myRectangle.color="blue";
                }
            }
        }
    }

    Rectangle {
        id: myOtherRectangle
        width: parent.width
        height: 200
        color:"beige"
        y:250

        Rectangle {
            id: myNewRectangle
            width: 50
            height: width
            color:"green"

            onXChanged: {
                console.log("The new X coordinate of the rectangle is "+myNewRectangle.x);
            }
        }

        MouseArea {
            anchors.fill: parent
            drag.target: myNewRectangle
            drag.axis: Drag.XAxis
            drag.minimumX: 0
            drag.maximumX: myOtherRectangle.width-myNewRectangle.width

            onClicked: {
                console.log(myNewRectangle.X);
            }
        }
    }
}
