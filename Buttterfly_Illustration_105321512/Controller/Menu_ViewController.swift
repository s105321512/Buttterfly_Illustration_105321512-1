//
//  ViewController.swift
//  Buttterfly_Illustration_105321512
//
//  Created by VipLab NCNU on 2018/4/22.
//  Copyright © 2018年 VipLab NCNU. All rights reserved.
//

import UIKit
var name = ""


class ViewController: UIViewController {
   
    @IBAction func butterfly_button(_ sender: UIButton) {
        switch sender.tag{
        case 1:
            name = "弄蝶科"
        case 2:
            name = "粉蝶科"
        case 3:
            name = "鳳蝶科"
        case 4:
            name = "灰蝶科"
        case 5:
            name = "蛺蝶科"
        default:
        break
        }
        self.performSegue(withIdentifier: "gotoList", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if name == "弄蝶科"{
            butterfly = [
                Butterfly(name: "大白裙弄蝶", cientific: "Satarupa majasra", image: "大白裙弄蝶.jpg",location: "棲息在臺灣本島中海拔地區。", description: "大型弄蝶。軀體腹面白色，背面褐色、腹部被白鱗。翅背面底色暗褐色。前翅中室端有一白斑，翅中央有一縱列白斑，兩者分離。M1、M2室中央時有一小白點。翅頂附近有三枚排成一列的短小白條。後翅翅面有一寬闊白帶，其外側有由橢圓形黑褐色斑點形成的弧形斑列。後翅外緣有數枚小白紋，其相鄰部份之緣毛白色，其他部份黑褐色。翅腹面斑紋色彩與背面相似，但後翅白色部份延伸至翅基。", ecological: "香科吳茱萸、賊仔樹及食茱萸"),
                
                Butterfly(name: "埔里黃紋弄蝶", cientific: "Celaenorrhinus horishanus", image: "埔里黃紋弄蝶.jpg", location: "本種是特有種，棲息在臺灣本島低、中海拔地區。", description: "中型弄蝶。觸角末端錘部基部常有不鮮明白環。腹部背側褐色，有時具不鮮明黃色細環，腹側黃黑相間。翅面底色暗褐色。前翅中室端及Cu1室中央各有一大白斑。M3室基部有一枚、Cu2室外端有兩枚較小白斑。M1、M2室中央各有一枚小白紋。翅頂附近有三枚排成一列的小白紋。Cu1室白斑前方時有黃色短線紋。後翅有鮮明黃色斑紋，緣毛白黑相間，白色部份乳白色或黃白色。翅腹面斑紋色彩與背面相似，但後翅黃紋常較背面鮮明。", ecological: "爵床科馬蘭屬植物"),
                
                Butterfly(name: "黑澤星弄蝶", cientific: "elaenorrhinus kurosawai", image: "黑澤星弄蝶.jpg", location: "分布於臺灣本島中海拔地區，本種是臺灣特有種。", description: "中小型弄蝶。觸角末端具鮮明白環。腹部背側褐色，時有不鮮明的黃色細環，腹側黃黑相間。翅面底色暗褐色。前翅中室端及Cu1室中央各有一白斑。M3室基部有一枚、Cu2室外端有兩枚較小白斑。M1、M2室中央各有一小白紋。翅頂附近有三枚排成一列的小白紋。Cu1室白斑前方時有黃色小紋。後翅有黃色斑紋，但常消退而模糊不清，緣毛黃黑相間。翅腹面斑紋色彩與背面相似，後翅黃紋較背面鮮明。", ecological: "爵床科馬蘭屬植物"),
                
                Butterfly(name: "星褐弄蝶", cientific: "Pelopidas agna", image: "星褐弄蝶.jpg", location: "在臺灣地區分布於臺灣本島低、中海拔地區", description: "小型弄蝶。軀體背側黑褐色，腹側白色。雄蝶翅面底色褐色。前翅中央有排成弧形的白色點列，中室端有一小白點，1A+2A脈中央前側有一細小黃白色性標，後翅無紋。翅腹面有灰白色鱗覆蓋前翅前半部及後翅基半部與沿翅脈部份。前、後翅中央均有一排成弧形的白色點列，亞外緣有一排成弧形、較為模糊的灰白色斑列。後翅翅基常有數只小白點。內緣毛褐色，外緣毛褐、白相間。", ecological: "禾本科之臺南大油芒"),
                
                Butterfly(name: "墨子黃斑弄蝶", cientific: "Potanthus motzui", image: "墨子黃斑弄蝶.jpg", location: "本種是特有種，分布於臺灣本島低、中海拔地區。", description: "小型弄蝶。軀體背側黑褐色，被橙黃色鱗；腹側橙黃色。前翅翅頂尖；後翅半圓形。翅背面底色暗褐色。前翅中央有一黃色斑帶，R3至R5室有黃色小斑帶，兩者通常分離；中室至前緣有條形黃色紋。後翅中央有一黃色斑帶，其內翅脈黑褐色；Sc+R1及Rs室內有一黃色小斑點。腹面底色橙黃色。雄蝶於前翅背面1A+2A脈有一黑色、具天鵝絨光澤之細條形性標。緣毛橙黃色及褐色。", ecological: "禾本科植物")]
//            butterfly_name = ["大白裙弄蝶","埔里黃紋弄蝶","黑澤星弄蝶","褐弄蝶","墨子黃斑弄蝶"]
//            cientific_name = ["Satarupa majasra","Celaenorrhinus horishanus","Celaenorrhinus kurosawai","Pelopidas agna","Potanthus motzui"]
//            butterfly_image_name = ["大白裙弄蝶.jpg","埔里黃紋弄蝶.jpg","黑澤星弄蝶.jpg","褐弄蝶.jpg","墨子黃斑弄蝶.jpg"]
        }else if name == "粉蝶科"{
            butterfly = [
                Butterfly(name: "水青粉蝶", cientific: "Catopsilia pyranthe", image: "水青粉蝶.jpg", location: "在臺灣地區分布於臺灣本島平地至低、中海拔山地，以及離島澎湖、小琉球、東沙島。金門地區亦有分布。", description: "中型粉蝶，有季節型。軀體背面黑褐色，覆白色毛及鱗片; 腹面白色。雄蝶翅背面底色白色，前翅翅頂至外緣有黑褐色紋。前翅中室端有一黑褐色小點。後翅中室前方有一白色性標。翅腹面底色白色，前翅外半部及後翅泛黃綠色，佈滿黑褐色細紋。前翅後緣基部有一叢白色長毛。雌蝶翅背面底色泛黃綠色的白色，黑褐色斑紋較雄蝶發達，於前翅外側多一列排成弧形的黑褐色小紋。高溫期個體於後翅外緣形成一明顯黑褐色斑列。翅腹面斑紋似雄蝶，但褐色斑紋更為明顯。低溫期個體於翅腹面紅褐色斑點發達，於後翅中央有幾枚銀白色小斑。雌蝶無性斑及前翅後緣長毛。", ecological: "豆科之望江南、毛決明、澎湖決明、翼柄決明、黃槐、阿伯勒"),
                
                Butterfly(name: "星黃粉蝶", cientific: "Eurema brigitta hainana", image: "星黃粉蝶.jpg", location: "在臺灣地區分布於臺灣本島平地至中海拔山地，北部地區棲地少。", description: "小型粉蝶。軀體黃色，背面有黑褐色紋。後翅後緣圓弧狀。雄蝶翅背面黃色，前翅翅頂至外緣及後翅外緣有黑褐色紋。翅腹面底色黃色，前、後翅中室端均有一黑褐色小點。後翅有黑褐色斑點及線紋，Rs室、M1室、M2室黑褐色紋相連成一線紋。雌蝶斑紋與雄蝶相似，但色彩較淺，翅面黑褐色斑紋較不鮮明。雄蝶無性標。", ecological: "豆科的假含羞草"),
                
                Butterfly(name: "深山粉蝶", cientific: "Aporia genestieri", image: "深山粉蝶.jpg", location: "雖然寄主植物分布普遍，本種在臺灣地區分布卻相當侷限，僅見於臺灣本島中、東部中海拔山地。", description: "中型粉蝶。軀體黑褐色，腹部腹面有一對模糊的白色縱條。複眼黑色。翅面底色白色，沿翅脈及前翅外緣有黑褐色鱗片分布。後翅腹面於翅基有一橙黃色斑紋。雌蝶翅底色半透明。", ecological: "胡頹子科的鄧氏胡頹子"),
                
                Butterfly(name: "麻斑粉蝶", cientific: "Delias pasithoe", image: "麻斑粉蝶.jpg", location: "在臺灣主要分布於臺灣本島中、高海拔山地。", description: "中型粉蝶。軀體大部分呈黑褐色; 僅腹部腹面白色。翅面底色黑褐色，翅面上有白色點列及條紋，中室內有白色條紋; 後翅除翅面上白色點列及條紋外，沿內緣有黃色紋; 後翅基部另有一鮮明黃斑。翅腹面底色黑褐色，前翅翅頂斑紋黃色; 後翅斑紋大部份黃色，少部份呈白色。中室內白條完整，內有黑褐色細線。", ecological: "桑寄生科槲寄生屬植物"),
                
                Butterfly(name: "雲紋粉蝶", cientific: "Appias indra", image: "雲紋粉蝶.jpg", location: "在臺灣地區主要分布於臺灣本島中、南部低、中海拔地區，但常出現在北臺灣及高海拔地區。", description: "中型粉蝶，有雌雄二型性。軀體背面黑褐色，覆白色毛及鱗片; 腹面白色。雄蝶翅背面底色白色，前翅翅頂有黑褐色斑紋，內有數枚白斑。後翅白色。前翅腹面底色白色，翅頂奶油色。後翅腹面底色奶油色，上有濃淡不均的黑褐色紋。交尾器囊形突與第八腹節腹板間的膜上生有一對淺褐色長毛束(毛筆器)。雌蝶前翅背面黑褐色較雄蝶寬廣。後翅外緣有黑褐色寬邊。翅腹面有濃淡不均的黑褐色及白色紋。乾季(低溫期)個體後翅腹面色彩較黯淡而呈淺褐色，雨季(高溫期)則呈色彩較鮮明。", ecological: "大戟科之鐵色與臺灣假黃楊")]
//            butterfly_name = ["水青粉蝶","星黃粉蝶","深山粉蝶","麻斑粉蝶","雲紋粉蝶"]
//            cientific_name = ["Catopsilia pyranthe","Eurema brigitta hainana","Aporia genestieri","Delias pasithoe","Appias indra"]
//            butterfly_image_name = ["水青粉蝶.jpg","星黃粉蝶.jpg","深山粉蝶.jpg","麻斑粉蝶.jpg","雲紋粉蝶.jpg"]
        }else if name == "鳳蝶科"{
            butterfly = [
                Butterfly(name: "大琉璃紋鳳蝶", cientific: "Papilio paris", image: "大琉璃紋鳳蝶.jpg", location: "在臺灣本島分布於北部低山丘陵地，離島龜山島亦有分布，分布南限於臺灣西部在新竹一帶，於臺灣東部在宜蘭一帶，近年來臺中大坑地區有疑似源自人為因素造成之族群建立。", description: "中型鳳蝶，軀體黑褐色，散佈綠色亮鱗。後翅M3脈端有一明顯葉狀尾突。翅背面底色黑褐色，密佈亮鱗，後翅前側有一枚藍綠色亮斑，與後翅中央之綠色亮線連接。後翅臀區有一紫紅色圈紋。翅腹面底色褐色，於前翅外側有灰白色斑帶; 後翅內側有一片黃褐色鱗，沿外緣有一列紫紅色弦月紋。雄蝶前翅背面後側有褐色絨毛狀性標。", ecological: "山刈葉、三腳虌、柑橘等芸香科植物的葉片"),
                
                Butterfly(name: "臺灣烏鴉鳳蝶", cientific: "Papilio dialis tatsuta", image: "台灣烏鴉鳳蝶.jpg", location: "", description: "", ecological: ""),
                
                Butterfly(name: "白紋鳳蝶", cientific: "Papilio helenus", image: "白紋鳳蝶.jpg", location: "分布於臺灣本島低、中海拔地區，較翠鳳蝶局限。", description: "中型鳳蝶。軀體黑褐色，佈滿綠色亮鱗。後翅M3脈端有一明顯葉狀尾突。翅背面底色黑褐色，密佈亮鱗，於後翅前側呈藍色，其餘部份呈綠色，亮鱗幾乎佈滿整個尾突。翅腹面底色褐色，於前翅外側有灰白色斑帶; 後翅由翅基沿內緣有一片綠色及黃褐色鱗，沿外緣有一列橙紅色弦月紋。雄蝶前翅後側有一片明顯的褐色絨毛狀性標。", ecological: "賊仔樹、食茱萸、吳茱萸等芸香科植物的葉片。"),
                
                Butterfly(name: "青帶鳳蝶", cientific: "Graphium sarpedon", image: "青帶鳳蝶.jpg", location: "在臺灣分布於臺灣本島平地至中海拔山區，金門馬祖地區有不同亞種分布。", description: "中型鳳蝶。身體暗褐色，腹面有灰白毛。腹部有數列白色細線。翅形狹長。後翅外緣呈波浪狀。翅面呈暗褐色，翅面中央有一列半透明青色帶紋，後翅外緣另有一列同色弧形短紋，另外在翅後半部有許多紅色細紋。雄蝶後翅內緣褶內生有白色長毛。", ecological: "樟科植物"),
                
                Butterfly(name: "青斑鳳蝶", cientific: "Graphium doson", image: "青斑鳳蝶.jpg", location: "在臺灣分布於臺灣本島平地至中海拔山區，金門馬祖地區有不同亞種分布。", description: "中型鳳蝶。身體暗褐色，腹面有灰白毛。腹部有數列白色細線。翅形狹長。後翅外緣呈波浪狀。翅面呈暗褐色，翅面中央有一列半透明青色帶紋，後翅外緣另有一列同色弧形短紋，另外在翅後半部有許多紅色細紋。雄蝶後翅內緣褶內生有白色長毛。", ecological: "樟科植物")]
//            butterfly_name = ["大琉璃紋鳳蝶","台灣烏鴉鳳蝶","白紋鳳蝶","青帶鳳蝶","青斑鳳蝶"]
//            cientific_name = ["Papilio paris","Papilio dialis tatsuta","Papilio helenus","Graphium sarpedon","Graphium doson"]
//            butterfly_image_name = ["大琉璃紋鳳蝶.jpg","台灣烏鴉鳳蝶.jpg","白紋鳳蝶.jpg","青帶鳳蝶.jpg","青斑鳳蝶.jpg"]
        }else if name == "灰蝶科"{
            butterfly = [
                Butterfly(name: "井上烏灰蝶", cientific: "Satyrium inouei", image: "井上烏灰蝶.jpg", location: "本種是特有種，分布於臺灣本島低、中海拔地區。", description: "中小型灰蝶。軀體背側黑褐色，腹側白色。前翅前、外緣弧形。後翅CuA2脈末端有細長尾突，CuA1脈末端有不明顯短突起。臀區葉狀突發達。翅背面褐色，前翅中央有鮮明橙紅色斑，後翅有數枚橙紅色小斑。葉狀突黑褐色，內有橙紅色紋。翅腹面底色褐色，前、後翅有一內側鑲暗色邊之線紋，於後翅成波狀。亞外緣有鑲白紋的橙色及黑褐色紋列。CuA1室有黑斑與橙紅色弦月紋形成之眼狀斑。臀區有黑斑及橙色紋。緣毛褐色及白色。", ecological: "薔薇科笑靨花新芽、幼葉"),
                
                Butterfly(name: "杉谷琉璃小灰蝶", cientific: "Celastrina sugitanii shirozui", image: "杉谷琉璃小灰蝶.jpg", location: "在臺灣地區已知分布於臺灣本島中、北部低、中海拔地帶。", description: "中型灰蝶。有雌雄二型性。軀體背側暗褐色，腹側白色。前翅外緣弧形。後翅圓。雄蝶翅背面藍色，前翅外緣有窄黑邊，後翅前緣有灰邊，後翅亞外緣有一列模糊黑斑點。雌蝶翅背面藍色紋範圍較小且外側泛白，於前翅前、外緣及翅端有寬黑邊。翅腹面底色白色，上有明顯黑褐色紋。前翅腹面中央斑列之M1與M2黑褐紋明顯外偏，後翅則於Rs室斑點向翅基偏移，M2斑桿狀，CuA2兩只黑褐紋結合。中室端也有黑褐色細線紋。前、後翅沿外緣有一列外側黑點列及內側波狀黑線紋，後者有時減退。後翅中室內及翅基有暗褐色小點。緣毛白色，翅脈端褐色。", ecological: "山茱萸燈臺花與花苞"),
                
                Butterfly(name: "嘉義小灰蝶", cientific: "Sinthusa chandrana kuyaniana", image: "嘉義小灰蝶.jpg", location: "分布於臺灣本島低、中海拔地區。", description: "小型灰蝶。有雌雄二型性。軀體背側黑褐色，腹側灰白色。前翅翅頂尖，前緣、外緣弧形。後翅近卵形，CuA2脈末端有細長尾突。臀區葉狀突發達，上有橙色及黑色斑紋組成之眼斑。翅背面底色黑褐色，雄蝶後翅有紫藍色斑塊，雌蝶無紋。雄蝶翅腹面底色灰白色、雌蝶翅腹面底色白色，前、後翅各有褐色斑列。前、後翅中室端有一褐色短條。後翅近翅基處有數只褐色小斑。CuA1室有黑斑與橙色環形成之眼狀斑。臀區有藍紋及橙色紋。沿外緣有模糊暗色紋列。緣毛褐色。雄蝶前翅腹面後緣具棕色長毛、後翅背面翅基處有灰色性標。", ecological: "薔薇科懸鉤子屬植物之花苞及葉片"),
                
                Butterfly(name: "墨點小灰蝶", cientific: "Araragi enthea morisonensis", image: "墨點小灰蝶.jpg", location: "分布於臺灣本島中部中海拔地區。", description: "中小型灰蝶。軀體背側褐色，腹側白色。前翅前緣弧形。後翅CuA2脈末端有尾突。翅背面底色褐色，前翅中央有淺色紋。腹面底色白色，上有許多小黑斑，於後翅後半較模糊。臀區附近有橙色斑紋，於CuA1室有黑斑。前翅緣毛褐色，後翅外緣毛褐色、內緣毛白色。", ecological: "胡桃科野核桃之新芽"),
                
                Butterfly(name: "霧社黑燕蝶", cientific: "Tongeia filicaudis mushanus", image: "霧社黑燕蝶.jpg", location: "分布於臺灣本島低、中海拔地帶，馬祖亦有分布，但當地族群屬於指名亞種。", description: "小型灰蝶。軀體背側暗褐色，腹側白色。前翅前緣弧形、外緣圓弧形。後翅圓，CuA2脈末端有一小尾突。翅背面黑褐色，後翅外緣、亞外緣有十分糢糊的白線及短弧線紋列。翅腹面底色白色或淺灰色，前、後翅中央有一暗褐色斑列。中室端有同色短線紋。前、後翅中室內及翅基有暗褐色小斑點。前、後翅亞外緣均有暗褐色重紋列，後翅M3及CuA1室末端有橙色弦月紋。緣毛白褐相混。", ecological: "景天科佛甲草屬植物之多肉組織")]
//            butterfly_name = ["井上烏灰蝶","杉谷琉璃小灰蝶","嘉義小灰蝶","墨點小灰蝶","霧社黑燕蝶"]
//            cientific_name = ["Satyrium inouei","Celastrina sugitanii shirozui","Sinthusa chandrana kuyaniana","Araragi enthea morisonensis","Tongeia filicaudis mushanus"]
//            butterfly_image_name = ["井上烏灰蝶.jpg","杉谷琉璃小灰蝶.jpg","嘉義小灰蝶.jpg","墨點小灰蝶.jpg","霧社黑燕蝶.jpg"]
        }else if name == "蛺蝶科"{
            butterfly = [
                Butterfly(name: "孔雀青蛺蝶", cientific: "Junonia orithya", image: "孔雀青蛺蝶.jpg", location: "臺灣本島低、中海拔地區。離島龜山島、綠島、蘭嶼、澎湖、金門與馬祖地區也有記錄。", description: "中型蛺蝶。觸角泛白。軀體背側黑褐色，腹側黃白色。前翅前緣弧形，外緣於M1脈末端突出。後翅外緣波狀。翅背面底色黑褐色，沿外緣有白色線紋。前翅於M1及CuA1室有一眼狀紋。中室端及中室內有一橙色細帶。翅面外側有白帶，形狀Y或V字形。後翅M1及CuA1室有一眼狀紋。雄蝶於後翅有具金屬光澤的藍色紋，雌蝶缺乏金屬光澤且色彩變異大。腹面底色淺黃褐色，眼紋位置與背面同。翅紋複雜，前翅近基部有三道橙色短條，翅面中央有暗色線，於前翅黑色，於後翅褐色。前翅白紋如翅背面。後翅外側有波狀線，翅基有數只鏤空紋。緣毛暗褐色與白色相間。", ecological: "爵床科爵床、車前草科車前草以及馬鞭草科的鴨舌癀等植物葉片"),
                
                Butterfly(name: "阿里山黃斑蔭蝶", cientific: "Neope pulaha didia", image: "阿里山黃斑蔭蝶.jpg", location: "臺灣本島中、高海拔地區。", description: "中型眼蝶。軀體背側暗褐色，腹側於胸部褐色，腹部白色。前翅直角三角形。後翅扇形。後翅外緣略呈波狀，於M3脈末端有短尾突。翅背面底色褐色，翅後側淺色，前、後翅外緣有黃細帶。翅外側有鑲黃紋眼紋列。部份翅脈黃色。腹面底色為褐色。前、後翅沿外緣有鑲黑線之細帶，亞外緣有模糊波狀帶紋。前翅中室基部有一細線紋，其外側有兩暗色短帶，外側帶較粗。翅中央有兩道不規則線紋，兩者間暗色而覆灰白色細紋，外側線前側鑲白紋。翅外側有眼紋列，眼紋外鑲黃色細環紋，於前翅後側擴大、眼紋模糊、呈方形。後翅基部附近有三只內含黃紋之暗色小斑。雄蝶於前翅CuA2室有前後相連之兩條狀性標。緣毛黃、褐相間。", ecological: "缺少相關資料"),
                
                Butterfly(name: "姬紅蛺蝶", cientific: "Vanessa indica", image: "姬紅蛺蝶.jpg", location: "廣泛分布於臺灣本島，離島彭佳嶼、龜山島、蘭嶼、澎湖、東沙島，外島金門、馬祖地區也有發現記錄", description: "中型蛺蝶。軀體背側褐色，腹側白色。前翅M1脈末端突出。翅背面大部份橙紅色，前翅前側黑色，後側也有黑色碎斑。前翅翅基附近及後翅翅基至內緣有泛金色光澤之褐色紋。後翅外側有一列黑色圓點列，亞外緣有一列黑色小點列。翅腹面斑紋複雜，前翅橙紅色斑及白斑似翅背面。其他部份成濃淡不均淺褐色，雜有白色線紋、白紋、藍紋及眼紋列。緣毛白色，翅脈端暗褐色。", ecological: "菊科艾草、錦葵科華錦葵、蕁麻科青苧麻等植物"),
                
                Butterfly(name: "鹿野黑蔭蝶", cientific: "Zophoessa siderea kanoi", image: "鹿野黑蔭蝶.jpg", location: "主要分布於臺灣本島中北部中、高海拔地區。", description: "中小型眼蝶。軀體背側暗褐色，腹側淺褐色。前翅直角三角形，前緣弧形，翅端鈍。後翅扇形。翅背面底色黑褐色或褐色，外緣有細帶，後翅亞外緣有白色波線。雌蝶前翅亞前緣有暗色紋。翅腹面底色淺褐色，前、後翅外緣有橙色細帶，內側鑲泛紫色白色亮線。後翅有兩道波狀泛紫色白色亮線貫穿。外側有弧形排列眼紋，眼紋外鑲泛紫色白圈紋。翅基有泛紫色白色亮線鏤空紋。緣毛黑白相間。", ecological: "缺少相關資料"),
                
                Butterfly(name: "蓮花環蛺蝶", cientific: "Neptis hesione podarces Nire", image: "蓮花環蛺蝶.jpg", location: "臺灣本島低、中海拔地帶。", description: "中型蛺蝶。軀體背側黑褐色、有金屬光澤，腹側白色。前翅三角形，後翅圓形，外緣略作鋸齒狀。翅背面底色黑褐色，翅面有黃白色帶紋、條紋及斑點。前翅中室有一白條，末端延伸入M2室。白色中央斑列弧形排列，外側有一條灰黃色線。後翅內側與外側各有一白帶，前者幅度遠寬於後者。外側帶外有一灰黃色線紋。翅腹面底色紅褐色，於翅背面白紋相應位置有白紋，後翅內側帶外側鑲暗褐色邊，外側白帶蓮座狀，兩者間有一列紅褐色斑點。前後翅亞外緣有一灰白色線。後翅翅基有斑駁淺色紋。雄蝶於後翅背面前緣有灰色性標。緣毛黑白相間。", ecological: "桑科之珍珠蓮")]
//            butterfly_name = ["孔雀青蛺蝶","阿里山黃斑蔭蝶","姬紅蛺蝶","鹿野黑蔭蝶","蓮花環蛺蝶"]
//            cientific_name = ["Junonia orithya","Neope pulaha didia","Vanessa indica","Zophoessa siderea kanoi","Neptis hesione podarces Nire"]
//            butterfly_image_name = ["孔雀青蛺蝶.jpg","阿里山黃斑蔭蝶.jpg","姬紅蛺蝶.jpg","鹿野黑蔭蝶.jpg","蓮花環蛺蝶.jpg"]
        }
    }	
}

