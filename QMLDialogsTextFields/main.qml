import QtQuick 2.3
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtQuick.Dialogs 1.2
Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("QML Dialogs and Text Fields")

    minimumWidth: btnColor.width+btnFont.width+txtPlain.width
    ColorDialog{
        id: colorDialog
        modality: Qt.WindowModal
        title: "Choose a color"
        color: "blue"
        onAccepted: {
            console.log("Accepted "+color)
            console.log("Rejected ")
        }
    }
    FontDialog{
        id: fontDialog
        modality: Qt.WindowModal
        title: "Choose a Font"

        onAccepted: {
            console.log("Accepted "+font)
            console.log("Rejected ")
        }
    }
    Row{
        Button{
            id: btnColor
            text: "Color"
            onClicked: {
                colorDialog.open()
            }
        }
        Button{
            id:btnFont
            text: "Font"
            onClicked: {
                fontDialog.open()
            }
        }
        TextField{
            id:txtPlain
            text:"Enter some text"
            width: 300
        }
    }
    Text {
        id: preview
        anchors.centerIn: parent
        font: fontDialog.font
        color: colorDialog.color
        text: txtPlain.text
    }

}
