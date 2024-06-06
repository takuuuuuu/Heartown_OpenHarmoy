import image from '@ohos.multimedia.image'
@Entry
@Component
export struct ShangxiangPage {
  textTimerController: TextTimerController = new TextTimerController()
  @State format: string = 'mm:ss.SS'
  @State message: string = 'Hello World'
  @State select: boolean = true
  private iconStr2: ResourceStr = $r("app.media.fozukeai")
  @State flag: number = 0;
  @Builder
  MyMenu(){
    Menu() {
      MenuItem({ startIcon: $r("app.media.1"), content: "福星"}).onChange((selected)=>{
        this.flag=1
      })
      MenuItem({ startIcon: $r("app.media.2"), content: "门神" }).onChange((selected)=>{
        this.flag=2
      })
      MenuItem({ startIcon: $r("app.media.3"), content: "月神" }).onChange((selected)=>{
        this.flag=3
      })
      MenuItem({ startIcon: $r("app.media.4"), content: "龙王"}).onChange((selected)=>{
        this.flag=4
      })
      MenuItem({ startIcon: $r("app.media.5"), content: "花神"}).onChange((selected)=>{
        this.flag=5
      })
      MenuItem({ startIcon: $r("app.media.6"), content: "禄星"}).onChange((selected)=>{
        this.flag=6
      })
      MenuItem({ startIcon: $r("app.media.7"), content: "土地神"}).onChange((selected)=>{
        this.flag=7
      })
      MenuItem({ startIcon: $r("app.media.8"), content: "寿星"}).onChange((selected)=>{
        this.flag=8
      })
      MenuItem({ startIcon: $r("app.media.9"), content: "日神"}).onChange((selected)=>{
        this.flag=9
      })
      MenuItem({ startIcon: $r("app.media.10"), content: "月老"}).onChange((selected)=>{
        this.flag=10
      })
      MenuItem({ startIcon: $r("app.media.11"), content: "灶神"}).onChange((selected)=>{
        this.flag=11
      })
      MenuItem({ startIcon: $r("app.media.12"), content: "财神"}).onChange((selected)=>{
        this.flag=12
      })
    }
  }

  build() {
    Row() {


      Column() {
        Button('选择神位').backgroundColor("#86C5E3").bindMenu(this.MyMenu())
        Stack({alignContent:Alignment.TopStart }){
          if (this.flag==1) {
            Image($r('app.media.1')).width(200).height(200).zIndex(2)
          }
          else if(this.flag==2){
            Image($r('app.media.2')).width(200).height(200).zIndex(2)
          }
          else if(this.flag==3){
            Image($r('app.media.3')).width(200).height(200).zIndex(2)
          }
          else if(this.flag==4){
            Image($r('app.media.4')).width(200).height(200).zIndex(2)
          }
          else if(this.flag==5){
            Image($r('app.media.5')).width(200).height(200).zIndex(2)
          }
          else if(this.flag==6){
            Image($r('app.media.6')).width(200).height(200).zIndex(2)
          }
          else if(this.flag==7){
            Image($r('app.media.7')).width(200).height(200).zIndex(2)
          }
          else if(this.flag==8){
            Image($r('app.media.8')).width(200).height(200).zIndex(2)
          }
          else if(this.flag==9){
            Image($r('app.media.9')).width(200).height(200).zIndex(2)
          }
          else if(this.flag==10){
            Image($r('app.media.10')).width(200).height(200).zIndex(2)
          }
          else if(this.flag==11){
            Image($r('app.media.11')).width(200).height(200).zIndex(2)
          }
          else if(this.flag==12){
            Image($r('app.media.12')).width(200).height(200).zIndex(2)
          }
          Image($r('app.media.xiang')).width("50%").height("75%").zIndex(1)

        }

        TextTimer({ isCountDown: true, count: 360000, controller: this.textTimerController })
          .format(this.format)
          .fontColor(Color.Black)
          .fontSize(50)
          .onTimer((utc: number, elapsedTime: number) => {
            console.info('textTimer notCountDown utc is：' + utc + ', elapsedTime: ' + elapsedTime)
          })
        Row() {

          Button("打断").onClick(() => {
            this.textTimerController.pause()
          }).backgroundColor("#F9BC64")
          Button("入定").onClick(() => {
            this.textTimerController.start()
          }).backgroundColor("#5291FF").margin({left:10,right:10})
          Button("重启").onClick(() => {
            this.textTimerController.reset()
          }).backgroundColor("#E67C92")
        }

      }
      .width('100%')
    }
    .height('100%')
    .backgroundColor(Color.White)
  }
}