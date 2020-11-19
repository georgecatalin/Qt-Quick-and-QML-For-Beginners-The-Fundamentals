import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML Basic Elements")

    Item {
        id: myItem
        x:50;y:50
        width: 600
        height: 500

        Rectangle {
            id: wrapAroundRectangle
            anchors.fill: parent
            color: "beige"
            border.color: "black"
        }

        /* **********************************************************************************************
        The coordinate system will start its origin in (50,50) because anything below Item element wraps inside the Item element.
        You can spot it by viewing the beige Rectangle which shows the dimensions of the Item ListElement

        All QML visual elements inherit the Item element. Therefore one can use the Item element the group visual elements together.
        *********************************************************************************************** */

        Rectangle {
            id:redRectangle
            color: "red"
            x: 0
            y:10
            width: 50
            height: 50
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("You clicked the red rectangle.");
                }
            }
        }

        Rectangle {
            id: greenRectangle
            color: "green"
            x: 60
            y:10
            width: 50
            height: 50
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    console.log("You clicked the green rectangle.");
                }
            }
        }

        Rectangle {
            id: blueRectangle
            color: "blue"
            x:120
            y:10
            width: 50
            height: 50
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("You clicked the blue rectangle.");
                }
            }
        }

        Rectangle {
            id: grayRectangle
            color: "gray"
            x: 180
            y: 10
            width: 50
            height: 50
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("You clicked the gray rectangle.");
                }
            }
        }

        Text {
            id: myText
            text: "This is text" //if no x,y coordinates are specified, then the element is rendered at (0,0) depending on the parent ListElement
            x:100
            y:100

            /*
            //first manner of presenting the font properties
            font.family: "Arial"
            font.pointSize: 30
            font.bold: true
            */

            /*
            //second manner of presenting the font properties
            font {
                family: "Arial"
                pointSize: 30
                bold: true
            }
            */


            //third manner of presenting the font properties
            font {
               family: "Arial";pointSize: 30;bold:true
            }
        }


        Image {
            id: myImageSource_specifiedInWorkingDirectory
            x:0
            y:150
            width: 100
            height: 100
            source: "file:qt-logo.png"
        }

        Image {
            id: myImageSource_specifiedInResourceFile
            x: 120
            y:150
            width: 100
            height: 100
            source: "/new/images/images/qt-logo.png"  //specify the prefix allocated when creating the resource + path towards the image relative to the .qml file
        }

        Image {
            id: myImageSource_specifiedInAbsolutePath
            x: 240
            y: 150
            width: 100
            height: 100
            source: "file:///D:/CodeLab/Qt-Quick-and-QML-For-Beginners-The-Fundamentals/3-1QMLBasicElements/images/qt-logo.png"
        }

        Image {
            id: myImageSource_specifiedFromOnlineURL
            x:300
            y:150
            width: 100
            height: 100
            source: "http://www.realitatea.net/asset/images/logo.png"
        }
    }
}
