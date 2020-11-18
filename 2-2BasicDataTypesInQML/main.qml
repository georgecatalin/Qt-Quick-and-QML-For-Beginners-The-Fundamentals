import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Basic Data Types in QML Language")


    /* *****************************************************************
    Basic Types Provided By The QML Language
    The basic types supported natively in the QML language are listed below:

    bool Binary true/false value
    double Number with a decimal point, stored in double precision
    enumeration Named enumeration value
    int Whole number, e.g. 0, 10, or -20
    list List of QML objects
    real Number with a decimal point
    string Free form text string
    url Resource locator
    var Generic property type
    ********************************************************************** */


    property string myStringProperty: "value"
    property int myIntProperty:42
    property double myDoubleProperty:9.4
    property bool myBoolProperty : true
    property url myUrlProperty : "http://www.linkedin.com"

    property var aNumberProperty :100
    property var aBoolProperty: true
    property var aStringProperty: "This is a string"
    property var anotherStringProperty: String("#FF008800")

    /* *** var data type can be used for replacing much more complex data types *** */
    property var aColor:Qt.rgba(0.2,0.3,0.4,0.5);


    /* *********************************************************
    rect QML Basic Type
    The rect type refers to a value with x, y, width and height attributes.
    *********************************************************** */
    property var aRect:Qt.rect(17,56,46,10)

    /* *********************************************************
    point QML Basic Type
    The point type refers to a value with x and y attributes.
    ********************************************************** */
    property var aPoint:Qt.point(10,10);

    /* **********************************************************
    size QML Basic Type
    The size type refers to a value with has width and height attributes.
    *********************************************************** */
    property var aSize:Qt.size(10,20);

    /* ****************************************************************
    vector3d vector3d(x, real y, real z)
    Returns a vector3d with the specified x, y, and z values.
    ***************************************************************** */
    property var aVector3d:Qt.vector3d(10,20,30);

    property var anArray:[0,1,2,"three","four",(function(){return 5;}) ]

    property var anObject: {"Audi": 40000 , "Dacia":7000}

    /* ******************************************************************
    font QML Basic Type
    The most commonly used properties are:
        string font.family
        bool font.bold
        bool font.italic
        bool font.underline
        real font.pointSize
        int font.pixelSize

         Text { font.family: "Helvetica"; font.pointSize: 13; font.bold: true }
     ********************************************************************* */
    property var aFont:Qt.font({family:"Arial",pointSize:16,bold:true});

    /* *********************************************************************************
    date QML Basic Type
    The date type refers to a date value, including the time of the day.
    To create a date value, specify it as a "YYYY-MM-DDThh:mm:ss.zzzZ" string.
    ********************************************************************************** */
    property date myDate:"2020-11-18";

    property var aFunction: function(){return "Hey, Alligator!!";}

    Rectangle {
        id: myRectangle
        color: aColor //"yellow"
        width: 200
        height: 100
        anchors.centerIn: parent

        Text {
            id: myText
            text: myStringProperty
            anchors.centerIn: parent
            //font.bold: myBoolProperty ? true : false
            font:aFont;
        }
    }

    Component.onCompleted: {
        console.log("The value of myStringProperty is " + myStringProperty);
        print("The value of myStringProperty is "+ myStringProperty);

        console.log("The value of myIntProperty is "+ myIntProperty);
        console.log("The value of myDoubleProperty is "+myDoubleProperty);
        console.log("The value of myUrlProperty is "+ myUrlProperty);

        if (myBoolProperty)
        {
            console.log("It is true, indeed.");
        }
        else
        {
            console.log("It is false.");
        }

        if(myStringProperty===myUrlProperty) // === in JS verifies data type and value, while == verifies value
        {
            console.log("They are the same");
        }
        else
        {
            console.log("They are not the same");
        }

        console.log("-------Playing with the var data types----------");
        console.log("The value of aNumber is "+aNumberProperty);
        console.log("The value of aBool is "+aBoolProperty);
        console.log("The value of aString is "+aStringProperty);
        console.log("The value of anotherString is "+anotherStringProperty);

        console.log("The components of aRect are : X="+aRect.x+" Y="+aRect.y+" width="+aRect.width+ " height="+aRect.height);

        console.log("The components of aPoint are : X="+aPoint.x+" Y="+aPoint.y);

        console.log("The components of aSize are : width="+aSize.width+" height="+aSize.height);

        console.log("The components of aVector3d are: X="+ aVector3d.x+" Y="+aVector3d.y+" Z="+aVector3d.z);

        console.log("The number of elements in the array is "+anArray.length);

        // read each element of the array
        /*
        anArray.forEach(function(value,index)
        {
            if(index===5)
            {
                console.log(value()); //appeal to it as a function so return its value
            }
            else
            {
               console.log(value);
            }
        }
        )
        */

        for (var i=0;i<anArray.length;i++)
        {
            if(i===5)
            {
                console.log(anArray[i]())
            }
            else
            {
                console.log(anArray[i]);
            }
        }

        console.log("The objects stored in anObject variable are "+ anObject.Audi+" and "+anObject.Dacia);

        console.log("The value of myDate is "+ myDate);
        console.log("The day of myDate is "+ myDate.getDay());
        console.log("The hours of myDate is "+myDate.getHours());

        console.log("The aFunction is "+aFunction);
        console.log("The output of aFunction is "+aFunction());

    }
}
