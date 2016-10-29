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
        id:blueRect
        width: 50
        height: 50
        radius: 100
        anchors.centerIn: root
        color: "blue"
    }
    Rectangle{
        id:yellowRect
        width: 100
        height: 100
        color: "yellow"
        anchors.top: blueRect.bottom
        anchors.left: blueRect.right
        anchors.margins: -10
        Rectangle{
            id:purpleRect
            color: "purple"
            width: 50
            height: 50
            anchors.margins: 5
            anchors.left: root.left
        }
    }
}
