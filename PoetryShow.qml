import QtQuick 2.14

Rectangle {
    property variant imageUrl:""
    property alias titleText: title.text
    property alias contentText: contentRepeater.model
    property alias authorText: author.text
    property alias dynastyText: dynasty.text
    property alias translationText: translation.text


    Image {
        id: backImage
        fillMode: Image.TileHorizontally
        smooth: true
        source: 'file:///'+imageUrl
    }
    Column{
        x:25
        y:10


        Text {
            width: 100
            height: 50
            id: title
            text: qsTr("无")
            font.family:"Helvetica"                                         // 字体
            font.pointSize: 24                                              // 大小
        }


        Row{
            id: descRow
            anchors.top: title.bottom
            anchors.topMargin: 30
            width: 100
            height: 30
            Text {
                id: authorT
                text: qsTr("<b>作者:</b>")
            }
            Text {
                anchors.left: authorT.right
                id: author
                text: qsTr("佚名")
            }

            Text {
                anchors.left: author.right
                anchors.margins: 80
                id: dynastyT
                text: qsTr("<b>朝代:</b>")
            }
            Text {
                anchors.left: dynastyT.right
                id: dynasty
                text: qsTr("不详")
            }
        }


        Column{
            anchors.top: descRow.bottom
            anchors.topMargin: 30
            id:contentColumn
            Repeater{

                        id:contentRepeater
                        model:["aaa","bbb","ccc","ddd"]

                        Text {
                            width: 100
                            height: 20
                            id: content
                            text: modelData
                        }


                    }
        }

        Column{
            width: 100
            height: 100
            anchors.top: contentColumn.bottom
            anchors.topMargin: 30
            Text {
                id: translationT
                text: qsTr("<b>译文</b>")
            }
            Text {
                anchors.top: translationT.bottom
                anchors.topMargin: 10
                width: 500
                id: translation
                wrapMode: Text.WrapAnywhere
                text: qsTr("无")
            }
        }

    }



}
