import QtQuick 2.5
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Rotation Animation")
    id:root

    property bool running: false
    Rectangle{
        id:body
        width: root.width
        height: root.height
        anchors.centerIn: root
        Image {
            id: background
            source: "qrc:///files/images/spiral.jpg"
            anchors.centerIn: body
            fillMode: Image.PreserveAspectFit
            width: 778
            RotationAnimation on rotation{
                from: 0
                to: 360
                duration: 3000
                paused: root.running
                loops: Animation.Infinite
            }
        }
        Image{
            id:logo
            source: "qrc:///files/images/qtlogo.png"
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: background
            width: 100
            height: 100
            opacity: 0.5

        }

        MouseArea{
            anchors.fill: background
            onClicked: {
                if(root.running==true)
                    root.running=false
                else
                    root.running=true
            }
        }
    }
}
