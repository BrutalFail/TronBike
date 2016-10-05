import QtQuick 2.4

Canvas {
    id: canvas
    width: parent.height < parent.width ? parent.height : parent.width
    height: parent.width < parent.height ? parent.width : parent.height
    anchors.verticalCenter: parent.verticalCenter
    anchors.horizontalCenter: parent.horizontalCenter

    //property int lastX: 0
    //property int lastY: 0

    onPaint: {
        var context = getContext('2d');


        context.clearRect(0, 0, width, width);

        context.fillText(width + " " + height, 50, 50);
        context.beginPath();
        context.moveTo(0, 0);
        context.lineTo(width, 0);
        context.lineTo(width, width);
        context.lineTo(0, width);
        context.lineTo(0, 0);
        context.lineWidth = 4;
        context.shadowBlur = 10;
        context.shadowColor = "#ffffff";
        context.strokeStyle = '#ffffff';
        context.stroke();

        context.beginPath();
        context.moveTo(width / 2, width - 2);
        context.lineTo(width / 2, width / 2);
        context.lineTo(width / 5, width / 2);
        context.lineWidth = 1;
        context.shadowBlur = 10;
        context.shadowColor = "#0000ff";
        context.strokeStyle = '#0000ff';
        context.stroke();


        context.beginPath();
        context.moveTo(width / 2, 0 + 2);
        context.lineTo(width / 2, width / 4);
        context.lineTo(width / 4, width / 4);
        context.lineTo(width / 4, width / 2);
        context.lineWidth = 1;
        context.shadowBlur = 10;
        context.shadowColor = "#00ff00";
        context.strokeStyle = '#00ff00';
        context.stroke();
    }

/*    MouseArea {
        id: area
        anchors.fill: parent
        onPressed: {
            canvas.lastX = mouseX;
            canvas.lastY = mouseY;
        }

        onPositionChanged: {
            canvas.requestPaint()
        }
    }*/
}
