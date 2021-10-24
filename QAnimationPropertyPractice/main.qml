import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    id:root
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle{
        id:myRectangle
        color: "red"
        height: 100
        width: 100
        x:0
        y:(parent.height / 2) - (height /2)

        PropertyAnimation{
            id:toRight
            target: myRectangle
            property: "x"
            to: root.width - myRectangle.width
            duration: 500
        }

        PropertyAnimation{
            id:toLeft
            target: myRectangle
            property: "x"
            to: 0
            duration: 500
        }

        MouseArea{
            anchors.fill: parent
            onClicked: {
                if(myRectangle.x === 0){
                     toRight.start()
                }
                else{
                    toLeft.start()
                }
            }
        }
    }
}
