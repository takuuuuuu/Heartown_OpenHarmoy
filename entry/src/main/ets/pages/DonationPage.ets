import router from '@ohos.router'
import  { homeItem} from './homeItem'
import  { CustomDialogExample} from './customPage'

PersistentStorage.PersistProp('aProp', 47);
@Entry
@Component
@CustomDialog
export struct DonationPage {
  @State message: string = '传送'
  @State zonggongjuankuan: number = 0 // 设置为静态变量，并打印
  @StorageLink('aProp') aProp: number = 48
  controller: CustomDialogController
  @State textValue: string = ''
  @State inputValue: string = 'click me'
  dialogController: CustomDialogController = new CustomDialogController({
    builder: CustomDialogExample({
      cancel: this.onCancel,
      confirm: this.onAccept,
      textValue: $textValue,
      inputValue: $inputValue
    }),
    cancel: this.existApp,
    autoCancel: true,
    alignment: DialogAlignment.Default,
    offset: { dx: 0, dy: -20 },
    gridCount: 4,
    customStyle: false
  })

  // 在自定义组件即将析构销毁时将dialogControlle删除和置空
  aboutToDisappear() {
    delete this.dialogController, // 删除dialogController
    this.dialogController = undefined // 将dialogController置空
  }

  onCancel() {
    console.info('Callback when the first button is clicked')
  }

  onAccept() {
    console.info('Callback when the second button is clicked')
  }

  existApp() {
    console.info('Click the callback in the blank area')
  }

  build() {

    Row() {
      Column() {

        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Divider()
        Row() {
          homeItem({
            img: $r("app.media.humancare"), text: '人类'
          })
          Blank()
          Image($r("app.media.finger"))
            .width(50)
            .border({ width: 5, color: Color.Black, radius: 10, style: BorderStyle.Solid })
            .onClick(() => {
              router.pushUrl({
                url: "pages/humansPage"
              })
            })
        }.width("100%")

        Row() {
          homeItem({
            img: $r("app.media.panda"), text: '动物'
          })
          Blank()
          Image($r("app.media.finger"))
            .width(50)
            .border({ width: 5, color: Color.Black, radius: 10, style: BorderStyle.Solid })
            .onClick(() => {
              router.pushUrl({
                url: "pages/animalsPage"
              })
            })
        }.width("100%")

        Row() {
          homeItem({
            img: $r("app.media.animal"), text: '生态'
          })
          Blank()
          Image($r("app.media.finger"))
            .width(50)
            .border({ width: 5, color: Color.Black, radius: 10, style: BorderStyle.Solid })
            .onClick(() => {
              router.pushUrl({
                url: "pages/environmentPage"
              })
            })
        }.width("100%")


        Stack() {
          Image($r("app.media.yuzhougongdexiang")).width("100%").height("46%").onClick(() => {
            if (this.dialogController != undefined) {
              this.dialogController.open()
            }
          })

        }
        }
      }
      .backgroundColor(Color.White)
      .width('100%')
    }
  }



/*            promptAction.showDialog({
              message: "您当前总共捐赠："
            })
            Button(this.inputValue)
            .onClick(() => {

            }).backgroundColor("#A5D61D").width(100).zIndex(3).position({x:"250",y:"250"})

                     Text(`${this.aProp}`)
            .onClick(() => {
              this.aProp += 1;
            }).zIndex(2)
*/