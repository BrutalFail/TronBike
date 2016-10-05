import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

ApplicationWindow {
    id: applicationWindow1
    visible: true
    title: qsTr("TronBike")
    MainForm {

    }
    /*
    Canvas {
        id: canvas
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        width: parent.height < parent.width ? parent.height : parent.width
        height: parent.width < parent.height ? parent.width : parent.height

        //property int lastX: 0
        //property int lastY: 0

        onPaint: {
            var context = getContext('2d');


            context.clearRect(0, 0, width, width);


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
        }
    }

    Canvas {
        id: canvas
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        width: parent.height < parent.width ? parent.height : parent.width
        height: parent.width < parent.height ? parent.width : parent.height

        //property int lastX: 0
        //property int lastY: 0

        onPaint: {
            var context = getContext('2d');


            context.clearRect(0, 0, width, width);


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

        MouseArea {
            id: area
            anchors.fill: parent
            onPressed: {
                canvas.lastX = mouseX;
                canvas.lastY = mouseY;
            }

            onPositionChanged: {
                canvas.requestPaint()
            }
        }
    }
    /*MainForm {

    }*//*
    Canvas {
        id: game
        anchors.fill: parent
        onPaint: {
            var context = getContext('2d');

            var width = context.width();
            var height = context.height();


              context.beginPath();
              context.moveTo(0, 0);
              context.lineTo(width, 0);
              context.lineWidth = 10;
              context.strokeStyle = '#ff0000';
              context.stroke();

              context.beginPath();
              context.moveTo(0, 0);
              context.lineTo(0, width);
              context.lineWidth = 10;
              context.strokeStyle = '#ff0000';
              context.stroke();

              context.beginPath();
              context.moveTo(0, width);
              context.lineTo(width, width);
              context.lineWidth = 10;
              context.strokeStyle = '#ff0000';
              context.stroke();

              context.beginPath();
              context.moveTo(width, 0);
              context.lineTo(width, width);
              context.lineWidth = 10;
              context.strokeStyle = '#ff0000';
              context.stroke();
        }
    }*/
}
