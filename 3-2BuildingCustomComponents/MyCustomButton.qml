import QtQuick 2.14

//paste the content of the component you want to create customized

Item {
    id: rootItem

    /* ***********************************
    if you do not want to expose any properties of your Component beside the ones you wish , then wrap the Component inside an Item
    and expose the property alias in the root, outside of the element
    ************************************* */

    property alias rootLevelButtonText: myText.text

    /* ***********************************************
      if you want to expose an event associated with the new custom Component in the instances of this custom Component
      ,then you need to define a signal at root level
    ************************************************ */
    signal buttonClickedAtRootLevel

    width: myRectangle.width //One has to expose the width so that elements like Row and Column can fit multiple custom components
    height: myRectangle.height //One has to expose the width so that elements like Row and Column can fit multiple custom components


    Rectangle {

        //define a property  alias to be able to access the property outside the component when instantiating it
        //property alias buttonText: myText.text

        id:myRectangle
        width: myText.implicitWidth+20
        height: myText.implicitHeight+20
        color: "red"
        border { color: "blue";width:3}

        Text {
            id:myText
            text: "This is button"
            anchors.centerIn: parent
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                //console.log("You clicked on "+myText.text);
                rootItem.buttonClickedAtRootLevel(); //set the action from the rootItem
            }
        }
    }

}









