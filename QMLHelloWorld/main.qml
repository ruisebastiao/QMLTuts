import QtQuick 2.3
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    color: "#212121"
    MouseArea {
        anchors.fill: parent
        onClicked: {
            text.color="blue";
            //Qt.quit();
        }
    }

    Text {
        id: text
        color: "white"
        text: qsTr("Hello World")
        anchors.centerIn: parent
    }
}
