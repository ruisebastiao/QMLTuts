import QtQuick 2.3
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Rectangle Demo")

    Rectangle{
        width: 50
        height: 50
        color: "#212121"
        border.color: "#000000"
        border.width: 1
    }

    Rectangle{
        width: parent.width/2
        height: parent.height/2
        color: "#ffff34"
        border.color: "#000000"
        border.width: 1
        anchors.centerIn: parent

        Rectangle{
            width: 50
            height: 50
            color: "#ff2121"
            border.color: "#000000"
            border.width: 1
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            radius:100

        }
        Rectangle{
            width: 50
            height: 50
            color: "#f0f0f0"
            border.color: "#000000"
            border.width: 1
            anchors.left: parent.left
            anchors.top: parent.top
            radius:100

        }
        Rectangle{
            width: 50
            height: 50
            color: "#00ff00"
            border.color: "#000000"
            border.width: 1
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            radius:100

        }
        Rectangle{
            width: 50
            height: 50
            color: "#0000ff"
            border.color: "#000000"
            border.width: 1
            anchors.right: parent.right
            anchors.top: parent.top
            radius:100

        }


    }


}
