import QtQuick 2.12
import QtQuick.Window 2.12


Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("早教")

    Rectangle{
        PoetryShow{
            imageUrl: "G:\\早教图片\\dengguanquelou.png"
            titleText: '登鹳雀楼'
            contentText: ['白日依山尽，','黄河入海流。','欲穷千里目，','更上一层楼。']
            authorText: "王之涣"
            dynastyText: "唐朝"
            translationText: "夕阳依傍着西山慢慢地沉没，滔滔黄河朝着东海汹涌奔流。若想把千里的风光景物看够，那就要登上更高的一层城楼。"
        }
    }
}
