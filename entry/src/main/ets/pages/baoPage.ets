@Entry
@Component
struct BaoPage {

  scroller: Scroller = new Scroller()
  private swiperController: SwiperController = new SwiperController()
  @State videoUrl: string = 'https://media.w3.org/2010/05/sintel/trailer.mp4'
  videocontroller: VideoController = new VideoController()
  @State curRate: number = 1
  private arr: number[] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
  @State Index: number = 0
  @Builder NavigationTitle() {
    Column() {
      Text('滴水之恩')
        .fontColor('#182431')
        .fontSize(30)
        .lineHeight(41)
        .fontWeight(700)
      Text('在这里记录下别人的点滴善意吧')
        .fontColor('#182431')
        .fontSize(14)
        .width("80%")
        .lineHeight(15)
        .opacity(0.4)
        .margin({ top: 2, bottom: 20 })
    }.alignItems(HorizontalAlign.Start)
  }


  build() {
    Column() {
      Navigation() {


          TextInput({ placeholder: 'search...' })
            .width('90%')
            .height(40)
            .backgroundColor('#FFFFFF')
            .margin(20)

          Swiper(this.swiperController) {
            Column() {
              Video({
                src: this.videoUrl,
                //previewUri: $r("app.media.icon"), // cover
                currentProgressRate: 1,
                controller: this.videocontroller
              }).width("100%").height("100%").autoPlay(true)
              Flex() {

                Button("start").onClick(() => {
                  this.videocontroller.start()
                })
              }
            }

            Column() {
              Video({
                src: this.videoUrl,
                //previewUri: $r("app.media.icon"), // cover
                currentProgressRate: 1,
                controller: this.videocontroller
              }).width("100%").height("100%").autoPlay(true)
              Flex() {

                Button("start").onClick(() => {
                  this.videocontroller.start()
                })
              }
            }

          }.loop(false)
          .indicator(true)
          .width("100%").height("50%")


          Button("感谢今天室友叫我起床")
            .borderStyle(BorderStyle.Solid)
            .backgroundColor("#86C5E3")
            .width("80%")
            .height("10%")
            .margin({ top: 20, bottom: 5 })
          TextInput({ placeholder: '今天别人为你做了什么好事呢···' }).height(90).width("80%")

      }
      .title(this.NavigationTitle)
      //.menus(this.NavigationMenus)
      .titleMode(NavigationTitleMode.Full)
      //  .toolBar(this.NavigationToolbar)
      .hideTitleBar(false)
      .hideToolBar(false)
      .onTitleModeChange((titleModel: NavigationTitleMode) => {
        console.info('titleMode' + titleModel)
      })
    }.width('100%').height('100%').backgroundColor('#F1F3F5')
  }
}