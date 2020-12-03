import QtQuick 2.0

Item {
    property alias myReceiverColor : myReceiverRectangle.color
    width: myReceiverRectangle.width
    height: myReceiverRectangle.height

    property int count: 0

    //step 3. define the slot
    function listen(count)
    {
        myReceiverText.text=count;
        console.log("I am listening to the signal and I am getting ..."+ count);
    }

    Rectangle {
        id:myReceiverRectangle
        width:300
        height: 400
        color: "green"

        Text {
            id:myReceiverText
            anchors.centerIn: parent
            text: "0"
            font.pointSize: 12
        }


    }

}
