import QtQuick 2.0
import QtQuick.Layouts 1.1
import Sailfish.Silica 1.0

Page {
    objectName: "staticSquares"
    allowedOrientations: Orientation.All
    SilicaFlickable {
        anchors.fill: parent


        PageHeader {
            id : pheader
            objectName: "pageHeader"
            title: qsTr("Static squares")
            titleColor: "white"
        }

        Item {

            id : props;
            property int size: 150
            property int margs: 50
        }

        Column {

            anchors {
                top: pheader.bottom
                left: parent.left
                leftMargin: props.margs

            }

            Item { // squares
                id : item1
                implicitHeight: props.size + 2 * props.margs
                Rectangle {
                    y : 0; x : 0;
                    width: props.size; height: props.size;
                    color: "DarkRed"
                }
                Rectangle {
                    y : props.size / 2; x : props.size;
                    width: props.size; height: props.size;
                    color: "GreenYellow"
                }
                Rectangle {
                    y : 0; x :props.size + props.size / 2;
                    width: props.size; height: props.size;
                    color: "DeepSkyBlue"

                }
            }
            Item { // column and row
                   id: item2;
                   implicitHeight: 2 * props.size + 2 * props.margs
                   anchors.top : item1.bottom

                   Column {
                       spacing: 20
                       Row {
                           spacing: 20
                           Rectangle {
                               y : 0; x : 0;
                               width: props.size; height: props.size;
                               color: "DarkRed"
                           }
                           Rectangle {
                               y : 0; x : 0;
                               width: props.size; height: props.size;
                               color: "GreenYellow"
                           }
                           Rectangle {
                               y : 0; x : 0;
                               width: props.size; height: props.size;
                               color: "DeepSkyBlue"

                           }
                       }
                       Row {
                           spacing: 20
                           Rectangle {
                               y : 0; x : 0;
                               width: props.size; height: props.size;
                               color: "Pink"
                           }
                           Rectangle {
                               y : 0; x : 0;
                               width: props.size; height: props.size;
                               color: "White"
                           }
                           Rectangle {
                               y : 0; x : 0;
                               width: props.size; height: props.size;
                               color: "Black"

                           }
                       }
                   }

               }
            Item { // grid
                id: item3

                anchors.top: item2.bottom


                Grid {
                    rows: 2
                    columns: 3

                    spacing: 20

                    Rectangle {
                        y : 0; x : 0;
                        width: props.size; height: props.size;
                        color: "DarkRed"
                    }
                    Rectangle {
                        y : 0; x : 0;
                        width: props.size; height: props.size;
                        color: "GreenYellow"
                    }
                    Rectangle {
                        y : 0; x : 0;
                        width: props.size; height: props.size;
                        color: "DeepSkyBlue"

                    }

                    Rectangle {
                        y : 0; x : 0;
                        width: props.size; height: props.size;
                        color: "Pink"
                    }
                    Rectangle {
                        y : 0; x : 0;
                        width: props.size; height: props.size;
                        color: "White"
                    }
                    Rectangle {
                        y : 0; x : 0;
                        width: props.size; height: props.size;
                        color: "Black"

                    }
                }
            }
        }
    }
}























/*
Label {
    anchors.centerIn: parent;
    text: qsTr("Квадрат");

}*/
