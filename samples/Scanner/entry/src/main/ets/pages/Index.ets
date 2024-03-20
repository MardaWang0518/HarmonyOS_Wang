import { QRCodeExample } from './ScanPage';
import { hilog } from '@kit.PerformanceAnalysisKit';
import { promptAction } from '@kit.ArkUI';

@Entry
@Component
struct Index {
  @State btnText: string = '生成二维码';
  @State value: string = ' HarmonyOS world! ';
  @State showQr: boolean = false;

  build() {
    Row() {
      Column() {
        TextInput({ placeholder: 'input your word...' })
          .placeholderColor(Color.Grey)
          .placeholderFont({ size: 14, weight: 400 })
          .caretColor(Color.Blue)
          .margin(20)
          .fontSize(14)
          .fontColor(Color.Black)
          .onChange((value) => {
            this.value = value
          })

        Button(this.btnText)
          .fontSize(20)
          .fontWeight(FontWeight.Bold)
          .onClick((event) => {
            this.showQr = !this.showQr
            this.btnText = this.showQr ? "隐藏二维码" : "生成二维码"
          })
        if (this.showQr) {
          QRCode(this.value).width(200).height(200).margin(20).backgroundColor(Color.Orange)
        }
      }
      .width('100%')
    }
    .height('100%')
  }

  generateQrCode() {
  }
}


