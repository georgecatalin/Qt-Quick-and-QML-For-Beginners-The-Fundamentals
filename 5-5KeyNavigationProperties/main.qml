import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Key Navigation Demo")

    Row {
        anchors.centerIn:parent

        Rectangle {
            id: myFirstRectangle
            width: 200
            height: width
            border.color: "black"
            color: "green"
            focus: true  //upon starting the application, this Rectangle can handle key events because it has the focus

            Keys.onDigit5Pressed: {
                console.log("i am 1");
            }

            /* *** Key-based user interfaces commonly allow the use of arrow keys to navigate between focusable items.
            The KeyNavigation attached property enables this behavior by providing a convenient way to specify the item that
            should gain focus when an arrow or tab key is pressed.
            *** */
            KeyNavigation.right: mySecondRectangle

            onFocusChanged: {
                if(focus===true)
                {
                    myFirstRectangle.color="yellow";
                }
                else{
                    myFirstRectangle.color="green";
                }
            }


        }

        Rectangle {
            id: mySecondRectangle
            width:200
            height: width
            border.color: "black"
            color: "dodgerblue"

            Keys.onDigit5Pressed: {
                console.log("i am 2");
            }

            KeyNavigation.left: myFirstRectangle

            onFocusChanged: {
                if (focus===true)
                {
                    mySecondRectangle.color="Yellow";
                }
                else
                {
                    mySecondRectangle.color="dodgerblue";
                }
            }
        }
    }
}
