@Entry
@Component

struct StackSample {
  private arr: string[] = ['APP1', 'APP2', 'APP3', 'APP4', 'APP5', 'APP6', 'APP7', 'APP8','APP9', 'APP10'];
  scroller: Scroller = new Scroller()
  build() {
    Navigation(){
      Stack({ alignContent: Alignment.Bottom }) {
        Scroll(this.scroller) {
          Flex({ wrap: FlexWrap.Wrap }) {
            //ForEach(this.arr, (item) => {
            Image($r('app.media.shui')).width(150).height(100).margin(10).borderRadius(10)
            Text('0~100分                     北师大水管里的水').width(150).height(100).fontWeight(FontWeight.Bold)
            Image($r('app.media.qingwa')).width(150).height(100).margin(10).borderRadius(10)
            Text('100~300分               温泉里泡澡的蛙').width(150).height(100).fontWeight(FontWeight.Bold)
            Image($r('app.media.mao')).width(150).height(100).margin(10).borderRadius(10)
            Text('300~500分                张大嘴的猫').width(150).height(100).fontWeight(FontWeight.Bold)
            Image($r('app.media.haimian')).width(150).height(100).margin(10).borderRadius(10)
            Text('500~600分               比奇堡的海绵').width(150).height(100).fontWeight(FontWeight.Bold)
            Image($r('app.media.xiyi1')).width(150).height(100).margin(10).borderRadius(10)
            Text('600~800分               蒙德的明冠山地上的蜥蜴').width(150).height(100).fontWeight(FontWeight.Bold)
            Image($r('app.media.ren')).width(150).height(100).margin(10).borderRadius(10)
            Text('800~950分              会动的路障').width(150).height(100).fontWeight(FontWeight.Bold)
            Image($r('app.media.long')).width(150).height(100).margin(10).borderRadius(10)
            Text('950~1100分            远古世纪的火龙').width(150).height(100).fontWeight(FontWeight.Bold)
            Image($r('app.media.yumi')).width(150).height(100).margin(10).borderRadius(10)
            Text('1100~1300分           即将被吃掉的玉米').width(150).height(100).fontWeight(FontWeight.Bold)
            Image($r('app.media.suo')).width(150).height(100).margin(10).borderRadius(10)
            Text('1300分+                   即将解锁···').width(150).height(100).fontWeight(FontWeight.Bold)

            // }, item => item)
          }}//.width('100%').height('100%')}
        .scrollable(ScrollDirection.Vertical)
        .scrollBar(BarState.On)
        .scrollBarColor(Color.Gray)
        .scrollBarWidth(10).onScroll((xOffset: number, yOffset: number) => {
          console.info(xOffset + ' ' + yOffset)
        }) .onScrollEdge((side: Edge) => {
          console.info('To the edge')
        })
        .onScrollEnd(() => {
          console.info('Scroll Stop')
        })

      }.width('100%').height('100%').backgroundColor(Color.White)
    }.title("全部转世").titleMode(NavigationTitleMode.Mini)
  }
}