import QtQuick 2.3
import QtQuick.Window 2.2

Window {
    visible: true
    width: 500
    height: 500
    title: qsTr("Advanced Anchoring")

    MouseArea{
        anchors.fill: parent
        onClicked: {
            recCenter.width=parent.width/4
            recCenter.height=parent.height/4
        }
    }

    Rectangle{
        id: recCenter
        width: parent.width/2
        height: parent.height/2
        color: "green"
        anchors.centerIn: parent
    }
    GreenBox{
        id: recTopLeft
        anchors.bottom: recCenter.top
        anchors.right: recCenter.left
    }
    GreenBox{
        id: recLeft
        anchors.verticalCenter: recCenter.verticalCenter
        anchors.right: recCenter.left
    }
    GreenBox{
        id: recBottomLeft
        anchors.top: recCenter.bottom
        anchors.right: recCenter.left
    }
    GreenBox{
        id: recTop
        anchors.horizontalCenter: recCenter.horizontalCenter
        anchors.bottom: recCenter.top
    }
    GreenBox{
        id: recTopRight
        anchors.left: recCenter.right
        anchors.bottom: recCenter.top
    }
    GreenBox{
        id: recRight
        anchors.verticalCenter: recCenter.verticalCenter
        anchors.left: recCenter.right
    }
    GreenBox{
        id: recBottomRight
        anchors.top: recCenter.bottom
        anchors.left: recCenter.right
    }
    GreenBox{
        id: recBottom
        anchors.top: recCenter.bottom
        anchors.horizontalCenter: recCenter.horizontalCenter
    }
    GreenBox{
        id: recMiddle
        anchors.centerIn: recCenter
    }
}
