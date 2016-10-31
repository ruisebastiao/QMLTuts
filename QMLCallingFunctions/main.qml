import QtQuick 2.3
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Calling C++ Functions")

    Row{
        id:tools
        Button{
            id:clear
            text: "Clear"
            onClicked: {
                var ctx=canvas.getContext("2d")
                ctx.reset()
                canvas.requestPaint()
                mouse.clear()
            }
        }
        Button{
            id:save
            text: "Save"
            onClicked: {
                mouse.save()
                canvas.save("test.png")
            }
        }
    }
    Canvas{
        id:canvas
        anchors.top: tools.bottom
        width: parent.width
        height: 480 - tools.height
        property int lastx: 0
        property int lasty: 0
        onPaint: {
            var ctx=getContext("2d")
            ctx.lineWidth=2
            ctx.strokeStyle=color.red
            ctx.beginPath()
            ctx.moveTo(lastx,lasty)
            lastx=area.mouseX
            lasty=area.mouseY
            ctx.lineTo(lastx,lasty)
            ctx.stroke()
            mouse.test()
            mouse.add(lastx,lasty)
            mouse.add(Qt.point(lastx,lasty))

        }
        MouseArea{
            id: area
            anchors.fill: parent
            onPressed: {
                canvas.lastx=mouseX
                canvas.lasty=mouseY
            }
            onPositionChanged: {
                canvas.requestPaint()
            }
        }
    }
}
