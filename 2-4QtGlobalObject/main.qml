import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Qt Global Object")

    /* **********************************************************************
    list<string> fontFamilies()
    Returns a list of the font families available to the application.
    ************************************************************************ */

    property var fonts: Qt.fontFamilies();

    /* ****************************************************************
    * Qt QML Type
    * Provides a global object with useful enums and functions from Qt.
    ***************************************************************** */

    Rectangle {
        id:myRectangle
        color: "red"
        width: 300
        height: 100
        anchors.centerIn: parent
        MouseArea {
            anchors.fill: parent
            onClicked: {
                //Quit the application
                console.log("I am quitting the application.");
                Qt.quit(); //make use of the Qt global object and its utility functions

                //List all the available fonts on this machine
                for (var i=0;i<fonts.length; i++)
                {
                    console.log("[ "+i+ " ] is "+ fonts[i]);
                }

                //hash a string
                var myString="George Calin";
                var myHashString=Qt.md5(myString);
                console.log("The hash string for the "+ myString + " is " + myHashString);

                //Open an URL externally from a Qt Quick Application
                Qt.openUrlExternally("https://www.linkedin.com/in/cgeorge1978/");

                //open a file with the associated program . eg. open image file
                Qt.openUrlExternally("file:///D:/CodeLab/Qt-Cpp-GUI-Development-Intermediate/qt-logo.png");

                /* *************************************************************
                  * read more ...
                  * Qt QML Type
                  * Provides a global object with useful enums and functions from Qt. More...

                  * Import Statement:
                  * import QtQml 2.14

                  * Properties
                  * application : object
                  * inputMethod : object
                  * platform : object
                  * styleHints : object
                  *********************************************************** */

                //display information about this System
                console.log("This application runs on a "+ Qt.platform.os+ " operating system.");
            }
        }
    }
}
