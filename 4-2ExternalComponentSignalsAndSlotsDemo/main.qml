import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("External Components with Signals and Slots")

    Notifier {
        id: myNotifier
        rectangleColor: "yellow"
        target: myReceiver //use this line only with the version 3 of adding the connection of the slot with the signal in the Notifier element
        Component.onCompleted: {
            //step 4. connect the signal with slot version 1
            //notify.connect(myReceiver.listen)
        }
    }

    Receiver {
        id:myReceiver
        myReceiverColor: "blue"
        anchors.right: parent.right
    }

    //step 4. connect the signal with the slot. version 2
//    Component.onCompleted: {
//        myNotifier.notify.connect(myReceiver.listen);
//    }
}
