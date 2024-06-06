import router from '@ohos.router'
@Entry
@Component
struct ImagePage {
  @State message: string = '登录'
  @State name: string = ''
  @State password: string = ''

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(40)
          .fontWeight(FontWeight.Bold)
          .margin({
            bottom:20,
            top:40
          })
        Text("用户名").fontWeight(FontWeight.Bold).margin({
          bottom: 16
        })
        Row() {
          Image($r("app.media.fozukeai")).width(30).height(40).objectFit(ImageFit.Contain)
          //  Blank(30)
          TextInput({
            placeholder: "请输入用户名",
            text:this.name
          }).width(300).height(50).onChange((val:string)=>{
            this.name=val
          })
        }//.alignItems(HorizontalAlign.Start)
        Divider().width(300).margin({
          top:10,
          bottom:20
        })
        Text("密码").fontWeight(FontWeight.Bold).margin({
          bottom: 16
        })
        Row() {
          Image($r("app.media.foshou1")).width(30).height(40).objectFit(ImageFit.Contain).backgroundColor(Color.White)
          TextInput({
            placeholder: "请输入登录密码"
          }).width(300).height(50).onChange((val:string)=>{
            this.password=val
          })

        }
        Divider().width(300).margin({
          top:10,
          bottom:20
        })
        Row(){
          Blank()
          Text("忘记密码？").fontSize(15).fontColor(Color.Gray).margin(10)
        }.width("60%")
        Button("登录").backgroundColor("#86C5E3").width(200).margin(10).onClick(()=>{
          router.pushUrl({
            url:"pages/TabPage",
            params:{
              name:this.name
            }
          })
        })
        Text("使用其他方式登录").fontColor(Color.Gray).margin(10)
        Row({space:10}) {//设置其中每个组件的距离
          Image($r("app.media.img_2")).width(50).height(70).objectFit(ImageFit.Contain)
          Image($r("app.media.img_3")).width(50).height(70).objectFit(ImageFit.Contain)
          Image($r("app.media.img_4")).width(50).height(70).objectFit(ImageFit.Contain)
        }.borderRadius(20)
        Text("立即注册").fontColor(Color.Gray).margin(10)
      }
      .width('100%')
    }
    .height('100%')
    .backgroundImage($r("app.media.zhuye"), ImageRepeat.NoRepeat)
    .backgroundImageSize(ImageSize.Cover)
  }
}


