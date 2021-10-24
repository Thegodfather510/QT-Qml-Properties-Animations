import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle{
        id:myShape
        color:"red"
        width: 300
        height: 300
        anchors.centerIn: parent
        radius: 200


        Text {
            id: myText
            text: Math.round(parent.rotation)
            anchors.centerIn: parent
            font.bold: true
            font.pixelSize: 50
            color: "darkred"
        }

        RotationAnimation{
            id:myAnimation
            target: myShape
            loops: Animation.Infinite
            from:myShape.rotation
            to:360
            direction: RotationAnimation.Clockwise
            duration: 3000
            running: true
        }

        MouseArea{
            anchors.fill: parent
            onClicked: {
                if(myAnimation.paused){
                    myAnimation.resume()
                }
                else
                    myAnimation.pause()
            }
        }
    }
}
