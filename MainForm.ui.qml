import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

Item {
    id: root
    anchors.fill: parent

    Item {
        id: login
        anchors.fill: parent
        visible: false

        GridLayout {
            anchors.rightMargin: 25
            anchors.leftMargin: 25
            anchors.bottomMargin: 25
            anchors.topMargin: 25
            anchors.fill: parent
            columns: 1

            GridLayout {
                width: 100
                height: 100
                columns: 1

                TextField {
                    id: txtLoginUsername
                    Layout.fillWidth: true
                    placeholderText: qsTr("Username")
                }

                TextField {
                    id: txtLoginPassword
                    readOnly: true
                    Layout.fillWidth: true
                    placeholderText: qsTr("Password")
                }

            }

            GridLayout {
                width: 100
                height: 100
                columns: 1

                Button {
                    id: btnLoginLogin
                    text: qsTr("Login")
                    Layout.fillWidth: true
                }

                Button {
                    id: btnLoginOffline
                    text: qsTr("Offline")
                    visible: false
                    Layout.fillWidth: true
                }

            }
        }
    }

    Item {
        id: lobby
        visible: true
        anchors.fill: parent

        GridLayout {
            visible: true
            anchors.bottom: tabBar.top
            anchors.right: parent.right
            anchors.left: parent.left
            anchors.top: parent.top
            columns: 1

            SwipeView {
                id: swipeView
                currentIndex: tabBar.currentIndex
                Layout.fillWidth: true
                Layout.fillHeight: true

                Page {

                    GridLayout {
                        anchors.rightMargin: 25
                        anchors.leftMargin: 25
                        anchors.bottomMargin: 25
                        anchors.topMargin: 25
                        rowSpacing: 30
                        columns: 1
                        anchors.fill: parent

                        Label {
                            text: qsTr("Lobby")
                            verticalAlignment: Text.AlignBottom
                            Layout.minimumHeight: 30
                            Layout.preferredHeight: 50
                            font.bold: true
                            font.pointSize: 20
                            Layout.fillWidth: true
                            horizontalAlignment: Text.AlignHCenter
                        }

                        ListView {
                            id: lvLobbyQueues
                            Layout.fillHeight: true
                            Layout.fillWidth: true
                            //topMargin: 15
                            leftMargin: 40
                            //bottomMargin: 15
                            rightMargin: 40
                            spacing: 10
                            model: ["BrutalDestruction", "Carnage", "Fun", "PainfulDestroya", "Brutalized", "Gude", "MrGIsTheBest", "Test Raum"]
                            delegate: ItemDelegate {
                                GridLayout {
                                    anchors.fill: parent
                                    columns: 2

                                    Label {
                                        leftPadding: 20
                                        Layout.fillWidth: true;
                                        text: modelData
                                    }

                                    Label {
                                        rightPadding: 20
                                        text: "[0/4]"
                                    }
                                }

                                //text: modelData
                                highlighted: ListView.isCurrentItem
                                onClicked: lvLobbyQueues.currentIndex = index
                                width: lvLobbyQueues.width - lvLobbyQueues.leftMargin - lvLobbyQueues.rightMargin
                            }
                            highlight: Rectangle {
                                color: "#009688"
                            }
                            ScrollIndicator.vertical: ScrollIndicator {

                            }
                        }

                        Button {
                            id: btnLobbyJoin
                            text: qsTr("Join")
                            Layout.fillWidth: true
                        }

                    }
                }

                Page {

                    GridLayout {
                        anchors.rightMargin: 25
                        anchors.leftMargin: 25
                        anchors.bottomMargin: 25
                        anchors.topMargin: 25
                        rowSpacing: 30
                        columns: 1
                        anchors.fill: parent

                        Label {
                            y: 0
                            text: qsTr("Lobby")
                            verticalAlignment: Text.AlignBottom
                            Layout.minimumHeight: 30
                            Layout.preferredHeight: 50
                            font.bold: true
                            font.pointSize: 20
                            Layout.fillWidth: true
                            horizontalAlignment: Text.AlignHCenter
                        }

                        Item {
                            id: item1
                            width: 200
                            height: 200
                            Layout.fillHeight: true
                            Layout.fillWidth: true

                            GridLayout {
                                anchors.verticalCenter: parent.verticalCenter
                                anchors.right: parent.right
                                anchors.left: parent.left
                                columns: 2

                                TextField {
                                    id: tfLobbyName
                                    text: ""
                                    Layout.columnSpan: 2
                                    Layout.fillWidth: true
                                    placeholderText: qsTr("Queue Name")
                                }

                                Label {
                                    text: qsTr("Max Players:")
                                }

                                SpinBox {
                                    id: spinBox1
                                    Layout.fillWidth: true
                                }


                            }
                        }

                        Button {
                            id: btnLobbyCreate
                            y: 319
                            text: qsTr("Create")
                            Layout.fillWidth: true
                        }



                    }
                }
            }
        }

        TabBar {
            id: tabBar
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            currentIndex: swipeView.currentIndex

            TabButton {
                id: tbLobbyJoin
                //width: 320
                text: qsTr("Join Queue")
                //anchors.left: parent.left
                //anchors.right: btnLobbyCreate.left
                //anchors.bottom: parent.bottom
                //anchors.top: parent.top
            }

            TabButton {
                id: tbLobbyCreate
                //width: 320
                text: qsTr("Create Queue")
                //anchors.right: parent.right
                //anchors.bottom: parent.bottom
                //anchors.left: btnLobbyJoin.right
                //anchors.top: parent.top
            }
        }
    }

    Item {
        id: queue
        visible: false
        anchors.fill: parent

        GridLayout {
            anchors.rightMargin: 60
            anchors.leftMargin: 60
            anchors.bottomMargin: 25
            anchors.topMargin: 25
            rowSpacing: 30
            columns: 1
            anchors.fill: parent

            Label {
                text: qsTr("Queue")
                verticalAlignment: Text.AlignBottom
                Layout.minimumHeight: 30
                Layout.preferredHeight: 50
                font.bold: true
                font.pointSize: 20
                Layout.fillWidth: true
                horizontalAlignment: Text.AlignHCenter
            }

            ListView {
                id: lvQueuePlayers
                boundsBehavior: Flickable.DragOverBounds
                Layout.fillHeight: true
                Layout.fillWidth: true
                //topMargin: 15
                //leftMargin: 40
                //bottomMargin: 15
                //rightMargin: 40
                spacing: 10
                model: ["Mr.X", "Alexandra", "FrBernhard", "BernhardMobil"]
                delegate: ItemDelegate {
                    text: modelData
                    highlighted: ListView.isCurrentItem
                    onClicked: lvQueuePlayers.currentIndex = index
                    width: lvQueuePlayers.width - lvQueuePlayers.leftMargin - lvQueuePlayers.rightMargin
                }
                highlight: Rectangle {
                    color: "#009688"
                }
                ScrollIndicator.vertical: ScrollIndicator {

                }
            }

            Button {
                id: btnQueueKick
                Layout.fillWidth: true
                text: qsTr("Kick")
            }

            Switch {
                id: swQueueReady
                Layout.fillWidth: true
                text: qsTr("Ready")
            }

            Button {
                id: swQueueStart
                Layout.fillWidth: true
                text: qsTr("Start")
            }

        }
    }
    Game {
        visible: false
    }
}
