import  web_v from '@ohos.web.webview'
@Entry
@Component
struct HumansPage {
  @State message: string = '人类'
  controller: WebviewController = new web_v.WebviewController()
  controller2: WebviewController = new web_v.WebviewController()
  controller3: WebviewController = new web_v.WebviewController()
  private swiperController: SwiperController = new SwiperController()

  build() {
      Column() {

        Swiper(this.swiperController) {
          Web({
            src: "https://www.cctf.org.cn/donate/ways.html?v=3",
            controller: this.controller

          }).height("100%")
          Web({
            src: "http://www.chinacharityfederation.org/n.html?id=317c46f7-5a14-4826-a9a4-73555e0fd82d&URLparamName=%E6%88%91%E8%A6%81%E6%8D%90%E8%B5%A0",
            controller: this.controller2

          }).height("100%")

          Web({
            src: "https://www.shuidigongyi.com/",
            controller: this.controller3

          }).height("100%")
        }.loop(false)
        .indicator(true)
      }
  }
}