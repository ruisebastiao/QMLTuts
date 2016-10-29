import QtQuick 2.3
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
Window {
    visible: true
    width: 600
    height: 600
    title: qsTr("Image and Animated Images Demo")

    Slider{
        width: parent.width
        minimumValue: 0
        maximumValue: 360
        value: 0
        onValueChanged: {
            console.log(value)
            banana.rotation=value
        }
    }


    Image {
        id: qtLogo
        source: "files/images/qtlogo.png"
        width: 80
        height: 80
    }
    Image {
        anchors.left: qtLogo.right
        id: tacocat
        source: "files/images/tacocat.jpg"

    }
    AnimatedImage {
        id: banana
        anchors.top: emoji.bottom
        source: "files/images/banana.gif"
        width: 80
        height: 80
        opacity: 0.50
    }
    Image {
//        anchors.centerIn: parent
        anchors.top: qtLogo.bottom
        id: emoji
        width: 80
        height: 80
        source: "https://s-media-cache-ak0.pinimg.com/236x/28/a9/b9/28a9b9e4ae73db5ed43154d01c5b413f.jpg"
        onProgressChanged: {
            console.log("Smile progress"+ progress)
        }
    }


}
