import promptAction from '@ohos.promptAction'
import router from '@ohos.router'
@Entry
@Component
export struct AixinPage {
  @State message: string = '日录'
  @State widthSize: number = 250
  @State heightSize: number = 100
  @State rotateAngle: number = 0
  @State aixin: number = 0
  @State flag: boolean = true
  @State bool: boolean = false


  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Stack() {
          Image($r("app.media.jingzhishuidi")).width("100%").height("60%").zIndex(1)
          Text("一点一滴").fontColor(Color.White).fontSize(50).fontWeight(FontWeight.Bold).zIndex(2)
          if(this.bool){
          Image($r("app.media.aixin")).width("100%").height("60%").zIndex(3)}
        }
        Row(){
          Button('+').fontWeight(FontWeight.Bold).margin({top:5}).backgroundColor("#86C5E3").margin({
            right:200,top:30
          }).fontSize(40).type(ButtonType.Circle).width("20%")
            .onClick(() => {
              router.pushUrl({
                url: "pages/baoPage"
              })
            })

          Button('+').type(ButtonType.Circle).fontWeight(FontWeight.Bold).margin({top:5}).backgroundColor("#86C5E3").fontSize(40)
            .width("20%").margin({top:30})}
        .onClick(() => {
          router.pushUrl({
            url: "pages/enPage"
          })
        })

        Button('记录')
          .backgroundColor("#46B1E3").fontSize(40).fontWeight(FontWeight.Bold).margin({bottom:30})
          .onClick(() => {
          this.bool = true
            promptAction.showToast({
              message: "功德量+1"
            })
          }

          ).width('100%').margin({ top: 20 })
      }
    }
    .width('100%').backgroundColor(Color.White)
  }
}