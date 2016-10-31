import QtQuick 2.3
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Multiple Animation")
    id: root
    Rectangle{
        id: box
        width: 50
        height: 50
        color: "green"
        opacity: 1

        NumberAnimation on x{
            to: root.width - box.width
            duration: 10000
        }
        NumberAnimation on y{
            to: root.height - box.height
            duration: 10000
        }
        RotationAnimation on rotation{
            from: 0
            to: 360
            duration: 1000
            loops: Animation.Infinite
        }

        ColorAnimation on color{
            from: "green"
            to: "red"
            duration: 8000
        }
    }
    NumberAnimation{
        id: aniOpacity
        target: box
        from: 1.0
        to: 0.0
        properties: 'opacity'
        running:true
        duration:2000
        loops: Animation.Infinite
    }
}
