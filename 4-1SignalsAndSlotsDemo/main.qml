import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Signals and Slots Demo")
    property int increment: 50

    Rectangle {
        id:myRectangle
        width: 300+increment
        height: 400
        color: "red"

        //step 1. define a signal
        signal emitGreeting(string myMessage)

        //step 3. define the slot that listens for signals as a Javascript function
        function listen(message){
            console.log("Hello, I am listening for signals and I got this message: "+ message);
        }

        //define a slot listening for the signal automatically
        onEmitGreeting: {
           console.log("Hello, I sensed the greeting was emitted.");
        }


       MouseArea {
           anchors.fill: parent
           onClicked: {
               //step 2. fire the signal
               myRectangle.emitGreeting("Abracadabra....");
               increment+=50;
           }
       }

       //step 4. connect the signal with the slot
       Component.onCompleted: {
           myRectangle.emitGreeting.connect(myRectangle.listen);
       }
    }
}
