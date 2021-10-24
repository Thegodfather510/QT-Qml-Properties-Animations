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
        width: 200
        height: 200
        anchors.centerIn: parent
        clip: true

        Text {
            id: myText
            text: qsTr("SCALE")
            font.bold: true
            font.pointSize: 66
            color: "darkred"
            rotation: -45
            anchors.centerIn: parent
        }

        SequentialAnimation{
            id:myAnimation
            running: true
            loops: Animation.Infinite

            ScaleAnimator{
                id:myScale
                target: myShape
                from:1
                to:0.5
                duration: 2000
                running: true
            }

            ScaleAnimator{
                id:myScale2
                target: myShape
                from:0.5
                to:1
                duration: 2000
                running: true
            }
        }
    }
}
