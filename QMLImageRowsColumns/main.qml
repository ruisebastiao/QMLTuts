import QtQuick 2.3
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
Window {
    visible: true
    width: 640
    id:root
    height: 480
    title: qsTr("Image Rows and Columns")

    Rectangle{
        id:viewport
        width:root.width
        height: root.height
        anchors.top: tools.bottom
        AnimatedImage{
            id:display
            anchors.centerIn: parent
            source: "files/images/banana.gif"

        }
    }
    Column{
//        Image {
//            id: logo
//            source: "files/images/qtlogo.png"
//            width: 80
//            height: 80
//        }
//        Image {
//            id: logo1
//            source: "files/images/qtlogo.png"
//            width: 80
//            height: 80
//        }
//        Image {
//            id: logo2
//            source: "files/images/qtlogo.png"
//            width: 80
//            height: 80
//        }
        Row{
            id:tools
            Button{
                text:"Reset"
                onClicked:{
                    display.fillMode= Image.Stretch
                    display.width=display.sourceSize.width
                    display.height=display.sourceSize.height
                    display.anchors.centerIn=viewport
                    display.clip=false

                }
            }
            Button{
                text:"Stretch"
                onClicked:{
                    display.fillMode= Image.Stretch
                    display.width=200
                    display.height=25

                }
            }
            Button{
                text:"Preserve Aspect Fit"
                onClicked:{
                    display.fillMode= Image.PreserveAspectFit
                    display.width=400
                    display.height=400

                }
            }
            Button{
                text:"Preserve Aspect Crop"
                onClicked:{
                    display.fillMode= Image.PreserveAspectCrop
                    display.width=25
                    display.height=400
                    display.clip=true

                }
            }
            Button{
                text:"Tile"
                onClicked:{
                    display.fillMode= Image.Tile
                    display.width=viewport.width
                    display.height=viewport.height

                }
            }
            Button{
                text:"Tile Horizontally"
                onClicked:{
                    display.fillMode= Image.TileHorizontally
                    display.width=viewport.width
                    display.height=viewport.height

                }
            }
            Button{
                text:"Tile Vertically"
                onClicked:{
                    display.fillMode= Image.TileVertically
                    display.width=viewport.width
                    display.height=viewport.height

                }
            }

        }
    }
}
