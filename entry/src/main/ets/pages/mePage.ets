import router from '@ohos.router'
import { DonationPage } from './DonationPage'
import { AixinPage } from './aixinPage'
@Entry
@Component

export struct mePage {
  @State message: string = 'Hello World'
  @State gongdeliang : number = DonationPage.length + AixinPage.length // 传入捐款数+爱心数

  //  @Observed count: int =
  build() {
    Column() {
      Image($r('app.media.dog'))
        .width("360vp")
        .height("250vp").borderRadius(20)
      Divider()
        .width("100%")
        .height("1vp")
        .offset({ x: "0vp", y: "90vp" })
        .backgroundColor("#858585")
      Image($r('app.media.fozukeai'))
        .width(50)
        .height(60)
        .offset({ x: "-120.13vp", y: "11.74vp" })
        .borderStyle(BorderStyle.Dashed)
      Text("takuuu")
        .width("60%")
        .height("60vp")
        .offset({ x: "38.91vp", y: "-39.71vp" })
          //.fontColor("#0a72b2")
        .fontColor(Color.Black)
        .textAlign(TextAlign.Center)
        .fontSize("40fp")
        .fontWeight(FontWeight.Bold)
        .fontStyle(FontStyle.Normal).backgroundColor("#46B1E3").borderRadius(20)
      Image($r('app.media.qiu')).width(40)
        .height(40)
        .offset({ x: "-130.13vp", y: "0.74vp" })
      Progress({ value: 60,type:ProgressType.Ring })  //value: mePage.number    log.number
        .width("90.57%")
        .height("60.72vp")
        .offset({ x: "52.89vp", y: "-40.96vp" })
        .visibility(Visibility.Visible)
        .color("#46B1E3").style({ strokeWidth: 15 })
      Text(" 功德量")
        .width("96.59vp")
        .height("62.56vp")
        .offset({ x: "-50.9vp", y: "-90.5vp" })
          //.fontColor("#2c99dd")
        .fontColor(Color.Black).fontWeight(FontWeight.Bold)
        .fontSize("27fp").backgroundColor("#86C5E3").borderRadius(20).height(40)
      Image($r('app.media.shu')).width(40)
        .height(40)
        .offset({ x: "-130.13vp", y: "-50.74vp" })
      Text(" 预计转世为：")
        .width("160.59vp")
        .height("62.56vp").fontWeight(FontWeight.Bold)
        .offset({ x: "-20.9vp", y: "-90.5vp" })
          //.fontColor("#2c99dd")
        .fontColor(Color.Black)
        .fontSize("25fp").backgroundColor("#86C5E3").borderRadius(20).height(40)

      // .fontColor("#396fc6")
      // .fontSize("25fp")
      //.fontColor(Color.Black)
      Image($r("app.media.xiyi"))
        .width(100)
        .height(100)
        .offset({ x: "-9.9vp", y: "-61.5vp" })
      Button("查看全部投胎")
        .width("117.45vp")
        .height("49.36vp")
        .offset({ x: "-9.9vp", y: "-51.5vp" })
          // .backgroundColor("#47a6e1")
          //  .backgroundColor(Color.Black)
        .type(ButtonType.Capsule)
        .fontStyle(FontStyle.Normal)
        .fontWeight(FontWeight.Bold).fontColor(Color.White)
        .fontFamily("sans-serif")
        .backgroundColor(Color.Black)
        .onClick(()=>{
          router.pushUrl({
            url:"pages/toutaiPage"
          })
        })


    }
    .backgroundColor(Color.White)
    .width("100%")
    .height("100%")

  }
}