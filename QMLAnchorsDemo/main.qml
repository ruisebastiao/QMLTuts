import QtQuick 2.3
import QtQuick.Window 2.2

Window {
    visible: true
    width: 500
    height: 500
    title: qsTr("Hello World")

    Rectangle{
        id:root
        width: parent.width/2
        height: parent.height/2
        color: "red"
        anchors.centerIn: parent
    }
    Rectangle{
        width: 50
        height: 50
        anchors.centerIn: root
        color: "blue"
    }
    Rectangle{
        width: 50
        height: 50
        anchors.centerIn: root
        color: "blue"
        anchors.top: root.top
        anchors.left: root.left
    }
}
