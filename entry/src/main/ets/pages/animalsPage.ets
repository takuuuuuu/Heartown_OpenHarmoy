import  web_v from '@ohos.web.webview'
@Entry
@Component
struct AnimalsPage {
  @State message: string = '动物'
  controller: WebviewController = new web_v.WebviewController()
  controller2: WebviewController = new web_v.WebviewController()
  controller3: WebviewController = new web_v.WebviewController()
  private swiperController: SwiperController = new SwiperController()
  build() {
    Row() {
      Column() {
        Swiper(this.swiperController) {
          Web({
            src: "https://donate.bangbangwang.cn/p/can47pzywmr8g61mk37e161vkxlq2o95?utm_bccid=ca17nxo5qvzl9gm10q507w3rp24e8ykw",
            controller: this.controller3
          }).height("100%")

          Web({
            src: "https://www.tajijin.cn/donation",
            controller: this.controller
          }).height("100%")

          Web({
            src: "https://savethefrogs.com/zh-cn/",
            controller: this.controller2
          }).height("100%")
        }.loop(false)
        .indicator(true)
      }
      .width('100%')
    }
    .height('100%')
  }
}