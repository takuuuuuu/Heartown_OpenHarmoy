import  web_v from '@ohos.web.webview'
@Entry
@Component
struct EnvironmentPage {
  @State message: string = '世界'
  controller: WebviewController = new web_v.WebviewController()
  controller2: WebviewController = new web_v.WebviewController()
  private swiperController: SwiperController = new SwiperController()

  build() {
    Column() {
      Swiper(this.swiperController) {
        Web({
          src: "http://www.cepf.org.cn/",
          controller: this.controller

        }).height("100%")
        Web({
          src: "https://www.openharmony.cn/mainPlay",
          controller: this.controller2

        }).height("100%")
      }.loop(false)
      .indicator(true)
    }
  }
}