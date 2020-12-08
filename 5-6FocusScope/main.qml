import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Focus Scope Demo")

   Column
   {
       MButton{
           color: "blue"
           focus: true;
       }

       MButton{
           color: "green"

       }
   }
}
