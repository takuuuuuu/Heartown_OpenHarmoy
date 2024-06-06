import { DonationPage } from './DonationPage'
import { ShangxiangPage } from './shangxiangPage'
import { mePage } from './mePage'
import { AixinPage } from './aixinPage'
@Entry
@Component
struct TabPage {
  @State fontColor: string = '#182431'
  @State selectedFontColor: string = "#86C5E3"
  @State currentIndex: number = 0
  private controller: TabsController = new TabsController()

  @Builder TabBuilder(index: number, name: string,img:Resource) {
    Column() {
        Image(img).width(20).height(20).margin({top:7}).borderRadius(15)
        Text(name)
          .fontColor(this.currentIndex === index ? this.selectedFontColor : this.fontColor)
          .fontWeight(FontWeight.Bolder)
          .fontSize(16)
          .fontWeight(this.currentIndex === index ? 500 : 400)
          .lineHeight(22)
          .margin({ top: 1, bottom: 17 })

    }.width('100%')
  }

  build() {
    Column() {
      Tabs({ barPosition: BarPosition.End, controller: this.controller }) {

        TabContent() {
          ShangxiangPage().width('100%').height('100%')
        }.tabBar(this.TabBuilder(0, '上香',$r("app.media.yizhuxiang")))

        TabContent() {
          AixinPage().width('100%').height('100%')
        }.tabBar(this.TabBuilder(1, '日录',$r("app.media.nature")))

        TabContent() {
          DonationPage().width('100%').height('100%')
        }.tabBar(this.TabBuilder(2, '传送',$r("app.media.nature1")))

        TabContent() {
          mePage().width('100%').height('100%')
        }.tabBar(this.TabBuilder(3, '个人',$r("app.media.humans1")))
      }
      .borderRadius(30)
      .vertical(false)
      .barMode(BarMode.Fixed)
      .barWidth(360)
      .barHeight(56)
      .animationDuration(400)
      .onChange((index: number) => {
        this.currentIndex = index
      })
      .width(360)
      .height("100%")

      .backgroundColor('#F1F3F5')
    }.width('100%')
  }
}