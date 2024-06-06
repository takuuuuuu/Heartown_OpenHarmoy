import router from '@ohos.router'
import url from '@ohos.url'
@Preview
@Component
@Entry
export  struct homeItem {
  @State text :string =""
  @State img:Resource=$r("app.media.icon")
  @State bgColor:Color=Color.Gray
  build() {

    Row() {

      Image(this.img).width(50).fillColor(this.bgColor)
      Text(this.text).fontSize(50)
        .fontWeight(FontWeight.Bold)
    }.margin({
      top:20,bottom:20
    })

  }
}