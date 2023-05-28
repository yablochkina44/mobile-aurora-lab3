import QtQuick 2.0
import QtQuick.Layouts 1.1
import Sailfish.Silica 1.0

Page {
    objectName: "animSquares"
    allowedOrientations: Orientation.All
    SilicaFlickable {
        anchors.fill: parent
        width: Layout.width

        PageHeader {
            id : pheader
            objectName: "pageHeader"
            title: qsTr("Animation squares")
            titleColor: "white"
        }

        Item {

            id : props;
            property int size: 150
            property int margs: 50
        }

        Column {
            width: parent.width
            id : layoutClmn
            anchors {
                top : pheader.bottom
                left : parent.left
                leftMargin: 2 * props.margs
            }






            Item {
                id : item1
                implicitHeight: props.size + props.margs
                anchors {
                    left: parent.left
                    leftMargin: props.margs
                }
                Rectangle {
                    y : 0; x : 0; width: props.size; height: props.size;
                    color: "Coral"
                    transform: [
                        Scale { xScale: 0.5},
                        Rotation {angle : 45 }
                    ]



                }

            }

            Item {

               id: item2;
               implicitHeight: 2 * props.size + 2 * props.margs

               anchors {
                   left: parent.left
                   leftMargin: 2 * props.margs
                   top : item1.bottom

               }
               Rectangle {
                   y : 0; x : 0;
                   width: props.size; height: props.size;
                   color: "OrangeRed"
                   id : animRect
                   property int padding: 40
                   property int duration: 4000
                   property bool running: false

                   transform: Scale {
                       id: scaleTransform
                       property real scale: 1
                       xScale: scale
                       yScale: scale
                   }
                   Text {
                       id: text_ads
                       y: (parent.height-height)/2
                       x: parent.padding


                       color: "White"
                       font.pixelSize: 70;
                       text: "ывв"

                       RotationAnimation on rotation {
                                  to: 360
                                  duration: animRect.duration
                                  running: animRect.running
                              }
                       }
                   }




                   ParallelAnimation {
                       running: true
                       SequentialAnimation  {
                                   running: true
                                   loops: Animation.Infinite
                                   NumberAnimation { target: animRect; property: "y"
                                       from: 0; to: 400; duration: 750; easing.type: Easing.InOutQuad }


                                   NumberAnimation { target: animRect; property: "y"
                                       from: 400; to: 0; duration: 750; easing.type: Easing.InOutQuad }
                                   PauseAnimation { duration: 250 }
                               }
                       SequentialAnimation {
                           running: true
                           loops: Animation.Infinite

                          PropertyAnimation {
                              target: scaleTransform
                              properties: "scale"
                              from: 1.0
                              to: 2.0
                              duration: 750
                          }
                          PropertyAnimation {
                              target: scaleTransform
                              properties: "scale"
                              from: 2.0
                              to: 1.0
                              duration: 750
                          }
                          PauseAnimation { duration: 100 }
                        }
                   }






               }

            }
        }
    }



