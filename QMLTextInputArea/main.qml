import QtQuick 2.3
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("QML Text Input and Text Area")

    MouseArea{
        anchors.fill: parent
        onClicked: {
            console.log(txtPlain.text)
            frame.border.color='grey'
            frame2.border.color='grey'

        }
    }

    Column{
        id:col
        anchors.fill: parent
        anchors.margins: 5
        spacing: 3

        Rectangle{
            id: frame
            width: parent.width
            height: 15
            border.color: 'grey'
            border.width: 1

            TextInput{
                id:txtPlain
                anchors.fill: parent
                onTextChanged: {
                    txtEncoded.text=Qt.btoa(txtPlain.text)
                }

            }
        }
        Rectangle{
            id:frameSec
            width: parent.width
            height: parent.height- (frame.height+col.spacing)-submit.height

            TextArea{
                id: txtEncoded
                anchors.fill: parent
            }
        }
        Button{
            id:submit
            text: "Submit"
            onClicked: {
                console.log(txtPlain.text+" "+txtEncoded.text)
            }
        }
    }

}
