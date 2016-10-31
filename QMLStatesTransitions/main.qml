import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("QML States and Transitions")


    Column{
        spacing: 15
        anchors.centerIn: parent
        Button{
            id: btnStop
            text: "Stop"
            onClicked: {
                stopLight.state="STOP"
            }
        }
        Button{
            id: btnGo
            text: "Go"
            onClicked: {
            stopLight.state="GO"
            }
        }
        StopLight{
            id:stopLight
            state: "STOP"

        }

    }
}
