--use Master
--drop database AtarashiSekaiProject
create database AtarashiSekaiProject
go
use AtarashiSekaiProject
go
create table News
(
	newsID int identity(1,1) primary key,
	dateUpdate datetime not null,
	naiyo ntext not null,
	link varchar(100) not null,
)
create table OnAir
(
	onAirID int identity(1,1) primary key,
	kaisha nvarchar(30) not null,
	jouhou nvarchar(100) not null,
	
)
create table Staff
(
	staffID int identity(1,1) primary key,
	shigoto nvarchar(50) not null,
	staffName nvarchar(50) not null,
)
create table Cast
(
	castID int identity(1,1) primary key,
	shigoto nvarchar(50) not null,
	staffName nvarchar(50) not null,
)
create table StaffAndCast
(
	staffAndCastID int identity(1,1) primary key,
	staffID int references Staff(staffID),
	castID int references Cast(castID),
)
create table Story
(
	storyID int identity(1,1) primary key,
	storyName nvarchar(10) not null,
	naiyoStory ntext not null,
	storyImages varchar(50) not null,
)
create table Kyanrakuta
(
	kyanrakutaID int identity(1,1) primary key,
	kyanName nvarchar(50) not null,
	kyanCV nvarchar(50) not null,
	kyanShokai ntext not null,
	kyanImage varchar(50) not null,
)
create table BrurayAndDVD
(
	bruDVDID int identity(1,1) primary key,
	DVDMai nvarchar(10) not null,
	title nvarchar(50) not null,
	naiyo ntext not null,
	images nvarchar(50) not null,
)
--alter table BrurayAndDVD add images nvarchar(50)
create table Music
(
	musicID int identity(1,1) primary key,
	title nvarchar(50) not null,
	naiyo ntext not null,
	images nvarchar(50) not null,
)
create table Gensaku
(
	gensakuID int identity(1,1) primary key,
	title nvarchar(50) not null,
	naiyo ntext not null,
	images nvarchar(50) not null,
)
create table Goods
(
	goodsID int identity(1,1) primary key,
	gName nvarchar(100) not null,
	link nvarchar(100) not null,
	images nvarchar(50) not null,
)
create table Pimu
(
	pimuID int identity(1,1) primary key,
	link nvarchar(100) not null,
)
create table Supesharu
(
	supesharuID int identity(1,1) primary key,
	sName nvarchar(100) not null,
	link nvarchar(100) not null,
	images nvarchar(50) not null,
)
create table Account
(
	accID int identity(1,1) primary key,
	nameAcc nvarchar(50) not null,
	userName varchar(50) not null,
	password varchar(50) not null,
)
create table Toppu
(
	topID int identity(1,1) primary key,
	newsID int references News(newsID),
	onAirID int references OnAir(onAirID),
	staffAndCastID int references StaffAndCast(staffAndCastID),
	storyID int references Story(storyID),
	kyanrakutaID int references Kyanrakuta(kyanrakutaID),
	bruDVDID int references BrurayAndDVD(bruDVDID),
	musicID int references Music(musicID),
	gensakuID int references Gensaku(gensakuID),
	goodsID int references Goods(goodsID),
	pimuID int references Pimu(pimuID),
	supesharuID int references Supesharu(supesharuID),
	accID int references Account(accID),
)
use AtarashiSekaiProject
go
alter table News add newsName nvarchar(50) not null
alter table OnAir add linkKaisha varchar(100) not null
go

insert into News values('7/7/2020','TVアニメ「新しいセカイプロジェクト」 
ここは新しいアニメのVRゲームの世界。
楽しみ！','','TVアニメ「新しいセカイプロジェクト」に始まります!')
insert into News values('8/8/2020','TVアニメ「新しいセカイプロジェクト」 
ここは新しいアニメのVRゲームの世界。
楽しみ！','','PV01を見て！')
insert into News values('8/14/2020','TVアニメ「新しいセカイプロジェクト」 
ここは新しいアニメのVRゲームの世界。
楽しみ！','','PV2があるから？')
insert into News values('8/20/2020','TVアニメ「新しいセカイプロジェクト」 
ここは新しいアニメのVRゲームの世界。
楽しみ！','','TVアニメ「新しいセカイプロジェクト」に始まります!')
insert into News values('9/1/2020','TVアニメ「新しいセカイプロジェクト」 
ここは新しいアニメのVRゲームの世界。
楽しみ！','','OPとEPを買えるの')
insert into News values('10/15/2020','TVアニメ「新しいセカイプロジェクト」 
ここは新しいアニメのVRゲームの世界。
楽しみ！','','Bru-ray&DVDを売る日')

insert into OnAir values('AX-T','10月7日より毎週水曜日　21:00～
リピート放送：毎週金曜日13:00～／毎週月曜日29:00～','')
insert into OnAir values('TOKYO MIX','
10月7日より毎週水曜日 23：30～','')
insert into OnAir values('BS11','10月7日より毎週水曜日 25：00～','')
insert into OnAir values('サイテレビ','10月8日より毎週木曜日 25：00～','')

insert into Staff values('原作','くまなの
「くまクマ熊ベアー」
（PASH!ブックス／主婦と生活社刊)')
insert into Staff values('キャラクター原案','029')
insert into Staff values('監督','信田ユウ')
insert into Staff values('シリーズディレクター','石井久志')
insert into Staff values('シリーズ構成','あおしまたかし')
insert into Staff values('キャラクター','デザイン・総作画監督中野裕紀')
insert into Staff values('美術監督','松本浩樹・保木いずみ・加藤浩')
insert into Staff values('色彩設計','いわみみか')
insert into Staff values('プロップデザイン','杉山友美')

insert into Cast values('ユナ','河瀬茉希')
insert into Cast values('フィナ','和氣あず未')
insert into Cast values('ノアール・フォシュローゼ','日高里菜')
insert into Cast values('シュリ','富田美憂')
insert into Cast values('ミサーナ・ファーレングラム','天野聡美')
insert into Cast values('シア・フォシュローゼ','水瀬いのり')
insert into Cast values('クリフ・フォシュローゼ','遊佐浩二')
insert into Cast values('ゲンツ','鶴岡聡')

insert into Story values('イントロダクション','悠々自適な引きこもりライフを満喫する美少女ユナは、
ＶＲＭＭＯＲＰＧ『ワールド・ファンタジー・オンライン』の廃ゲーマー。
ある日いつものようにログインしてみると、なにか普段と様子が違う。
もしかして……ここってゲームの中？　それとも異世界？
そして、その地に降り立ったユナの装備は
『クマの服』『クマの手袋』『クマの靴』で固められていて――んん？
くま……？　クマ……？　熊……？　ベアー……？ 
「なんじゃこれはーーーーーーっ!?」 
クマっ子、爆誕！
しかもこのクマ、ただのクマじゃない。
世界最強クラスの魔法とスキルを秘めた、
とんでもなくスーパーなクマだったのだ！
そんな、世界征服だってできちゃいそうな
強大な力を手にしたユナの目的――それは!?
この世界でも、ひたすら楽しく自由気ままに生きること！ 
最強無敵なクマっ子による、クマな冒険とクマな日常の物語、始まります♪ ','')
insert into Story values('クマさん、登場','脚本：あおしまたかし
絵コンテ・演出：東出 太
総作画監督：中野裕紀
クリモニアの冒険者ギルドへ駆け込んで来た一人の少年・カイ。ブラックバイパーに襲われた村を助けてほしいと訴えかける彼だったが、手を差し延べられる冒険者は居ないのだった。カイが悔しさと不甲斐なさに涙を落としたそんな時、現れたのは……愛らしいクマ着ぐるみに身を包んだ少女・ユナ！最強着ぐるみで時にかっこよく、時に可愛く困難へ立ち向かえ！ ','00000078.jpg')

insert into Kyanrakuta values('ユナ15歳','CV：河瀬茉希','美少女廃ゲーマー。ある日、異世界に飛ばされると同時に、肉体強化やすごい魔法、色んなスキルを覚えられる装備セットを手に入れる。……が、それはなぜかクマの着ぐるみだった。装備を外すとかよわい。頭の回転の早さと竹を割ったようなさっぱりした性格を備え持ち、言いたいことは相手が誰であろうと臆さずハッキリと言う。反面、親密な人間関係を築くのは苦手な様子。ただし妹属性。子供に甘い。貪欲なまでの美食家で、美味しいものが大好き。行動原理が『食』なことも多い','008_main.png')
insert into Kyanrakuta values('フィナ10歳','CV：和氣あず未','笑顔が可愛く、ひたむきな頑張り屋さん。病気の母親と3つ歳下の妹がおり、働きながら一家の生活を支えている。魔物の解体ができる。しっかり者だけど、自分の気持ちを口にするのはちょっぴり苦手。クマ装備のユナと運命的な出会いを果たし、やがて公私共にパートナーとなっていく','009_main.png')
insert into Kyanrakuta values('ノアール・フォシュローゼ10歳','CV：日高里菜','愛称はノア。クリモニア領主の娘。言葉使いこそ丁寧なものの、時にユナをも振り回すほど、エネルギッシュな女の子。街で見かけたことをきっかけに、クマさん（ユナ）の大ファンとなった。 ユナと関係の深いフィナをどこかライバル視している。 ','011_main.png')
insert into Kyanrakuta values('シュリ7歳','CV：富田美憂','フィナの妹。天真爛漫で非常に好奇心旺盛。よく働きに出ている姉に代わり、母・ティルミナの手伝いもするが、まだまだ年相応に甘えん坊。家で留守番をする事が多いからか、外の世界にはとても興味津々。 ','010_main.png')
insert into Kyanrakuta values('ミサーナ・ファーレングラム9歳','CV：天野聡美','愛称はミサ。よその土地の領主の孫娘で、品行方正なお嬢様。ノアとは旧知の仲らしく、ノアお姉様と呼び慕っている。おっとりしていて控えめな性格ではあるものの、出会ったばかりのユナのことをもっと知りたいと思っている。 ','012_main.png')
insert into Kyanrakuta values('シア・フォシュローゼ','CV：水瀬いのり','ノアールの姉。王都の学園に通っており、母親のエレローラと一緒に王都に住んでいる。学園ではかなり優秀な成績をおさめているようだが、ちょっぴり自信をつけすぎてしまっているよう。 ','020_main.png')
insert into Kyanrakuta values('クリフ・フォシュローゼ','CV：遊佐浩二','フィナたちが暮らすクリモニアの街の領主。ノアールとシアの父親。厳格で公平な領主である一方、茶目っ気や好奇心の旺盛さも持ち合わせている。娘のノアールからユナの話を聴き、興味を持つ。 ','021_sub.jpg')
insert into Kyanrakuta values('ゲンツ','CV：鶴岡 聡','クリモニアの冒険者ギルドで働く男性。快活で面倒見の良い性格。解体が主な仕事で、手の空いているときは事務仕事も手伝っている。魔物の解体を熟知しており、フィナや他の冒険者へ指導するほどの腕前。','022_sub.jpg')

insert into BrurayAndDVD values('01','くまクマ熊ベアー 第1巻','2021年1月27日発売予定
収録話：#01～＃04（4話収録）
【Blu-ray】
価格：18,000円＋税
品番：ZMXZ-14511 
限定版特典
1. くまゆるとくまきゅうのもふもふクッションカバー 
2. 原作者・くまなの書き下ろし小説「クマ神様」小冊子その1
3. キャラクター原案・029描き下ろし三方背ケース
4. キャラクターデザイン・中野裕紀描き下ろしデジパック
5. 特製ブックレット
6. ミニアニメ「べあべあべあくまー！」（映像：約2分）
7. ミニアニメ「べあべあべあくまー！クマダム編」1（映像：約30秒）
8. 特別番組『TVアニメ放送記念！「くまクマ熊ベアー」の世界へようこそ！』
9. キャストオーディオコメンタリー（河瀬茉希、和氣あず未、富田美憂）
10. PV集','00000122.jpg')
insert into BrurayAndDVD values('02','くまクマ熊ベアー 第2巻','

2021年2月24日発売予定
収録話：#05～＃08（4話収録）
【Blu-ray】
価格：13,000円＋税
品番：ZMXZ-14522 
【DVD】
価格：11,000円＋税
品番：ZMBZ-14532 
初回生産特典
1. 原作者・くまなの書き下ろし小説「クマ神様」小冊子その2
2. キャラクター原案・029描き下ろし三方背ケース
3. キャラクターデザイン・中野裕紀描き下ろしデジパック
4. 特製ブックレット
毎回特典
1. ミニアニメ「べあべあべあくまー！」（映像：約2分）
2. ミニアニメ「べあべあべあくまー！クマダム編」2（映像：約30秒）
3. キャストオーディオコメンタリー（河瀬茉希、日高里菜、天野聡美）
4. ノンクレジットOP
5. ノンクレジットED','00000126.jpg')
insert into BrurayAndDVD values('03','くまクマ熊ベアー 第3巻','2021年3月24日発売予定
収録話：#09～＃12（4話収録）
【Blu-ray】
価格：13,000円＋税
品番：ZMXZ-14523 
【DVD】
価格：11,000円＋税
品番：ZMBZ-14533 
初回生産特典
1. 原作者・くまなの書き下ろし小説「クマ神様」小冊子その3
2. キャラクター原案・029描き下ろし三方背ケース
3. キャラクターデザイン・中野裕紀描き下ろしデジパック
4. 特製ブックレット
毎回特典
1. ミニアニメ「べあべあべあくまー！」（映像：約2分）
2. ミニアニメ「べあべあべあくまー！クマダム編」3（映像：約30秒）
3. キャストオーディオコメンタリー（河瀬茉希、和氣あず未、日高里菜）
4. CM集','00000128.jpg')
insert into BrurayAndDVD values('04','クマな予約キャンペーン','『くまクマ熊ベアー』Blu-ray・DVD 第1巻を対象店舗にてご予約いただくと、先着で「キャラクター原案・029描き下ろしイラスト入りエコバッグ」を発売日にプレゼント！数量限定なので、お早めに！','')
insert into BrurayAndDVD values('05','対象店舗','Amazon.co.jp
※【Amazon.co.jp限定版】（キャラクター原案・029描き下ろしイラスト入りエコバッグ付）と記載がある商品のみが対象となります。
アニメイト全店（オンラインショップ含む）
ゲーマーズ全店（オンラインショップ含む）
ソフマップ（映像ソフト取り扱い店のみ、ドットコム含む）/アニメガ（一部アニメガ店舗を除く）
とらのあな全店（一部店舗を除く、通信販売を含む）
キャラアニ.com
HMV（オンラインショップ含む）
Getchu.com（げっちゅ屋）
ネオ・ウィング
あみあみ
セブンネットショッピング
楽天ブックス
※詳細は各店舗へお問い合わせください。 ','')

insert into Music values('オープニング','TVアニメ「くまクマ熊ベアー」オープニングテーマ
和氣あず未「イツカノキオク」
発売日：2020年10月7日（水）
【初回限定盤】CD+DVD COZC-1679〜80 ￥2,000+ 税
【通常盤】CD only COCC-17810 ￥1,500+ 税
【CD収録内容】
1. イツカノキオク
作詞・作曲：宮崎まゆ　編曲：高橋修平 透明のペダル　
作詞：坂井竜二　作曲・編曲：坂部剛
2. Girls Riot!!　
作詞・作曲：宮崎まゆ　編曲：高橋修平
3. Break Theory　
作詞・作曲・編曲：鈴木裕明
4. イツカノキオク（Instrumental）
5. 透明のペダル（Instrumental）
6. Girls Riot!!（Instrumental）
7. Break Theory（Instrumental）
【DVD収録内容】
「イツカノキオク」Music Video ／ Making Movie
和氣あず未　日本コロムビア公式HP
','00000036.jpg')
insert into Music values('エンディング','TVアニメ「くまクマ熊ベアー」エンディングテーマ
ユナ（CV：河瀬茉希）「あのね。」
発売日：2020年10月21日（水）COCC-17809 ￥1,200+税
【CD収録内容】
1. あのね。 ユナ（CV:河瀬茉希）
作詞：eNu・戸嶋友祐　作曲：戸嶋友祐　編曲：川田瑠夏 
2. Lets get started！ ユナ（CV:河瀬茉希）
作詞：eNu　作曲・編曲：睦月周平
3. あのね。（Instrumental）
4. Lets get started！（Instrumental)','00000041.jpg')
insert into Music values('オリジナルサウンドトラック','TVアニメ「くまクマ熊ベアー」オリジナルサウンドトラック
小森茂生 
発売日：2020年11月25日（水）
COCX-41331　￥2,800+税
【収録予定内容】
*劇伴 
*オープニングテーマ：和氣あず未「イツカノキオク」TVサイズ 
*エンディングテーマ：ユナ（CV：河瀬茉希）「あのね。」TVサイズ ','00000148.jpg')

insert into Gensaku values('novo1','novo','comic_1.jpg')
insert into Gensaku values('novo1','novo','novel_1.jpg')

insert into Goods values('goo','','l3(1).jpg')
insert into Goods values('goo','','l3(2).jpg')
insert into Goods values('goo','','l3(3).jpg')
insert into Goods values('goo','','l3(4).jpg')
insert into Goods values('goo','','l3(5).jpg')
insert into Goods values('goo','','l3(6).jpg')
insert into Goods values('goo','','l3(7).jpg')
insert into Goods values('goo','','l3(8).jpg')

insert into Supesharu values('su','','l1(1).jpg')
insert into Supesharu values('su','','l1(2).jpg')
insert into Supesharu values('su','','l1.jpg')
insert into Supesharu values('su','','l1.png')

insert into Account values('Admin','AokiDaisuke','12345')
insert into Account values('User','Yamamoto','12345')
go
create proc topnew
as
select top(5) * from News order by newsID desc
go
create proc storyname
as 
select * from Story where storyID=1
go
--drop proc storyname
create proc storyname2
as
select * from Story where storyID>1
go
create proc kyan1
as
select kyanName, kyanCV, kyanShokai, kyanImage from Kyanrakuta where kyanrakutaID=1
go
create proc kyan2
as
select kyanName, kyanCV, kyanShokai, kyanImage from Kyanrakuta where kyanrakutaID=2
go
create proc kyan3
as
select kyanName, kyanCV, kyanShokai, kyanImage from Kyanrakuta where kyanrakutaID=3
go
create proc kyan4
as
select kyanName, kyanCV, kyanShokai, kyanImage from Kyanrakuta where kyanrakutaID=4
go
create proc kyan5
as
select kyanName, kyanCV, kyanShokai, kyanImage from Kyanrakuta where kyanrakutaID=5
go
create proc kyan6
as
select kyanName, kyanCV, kyanShokai, kyanImage from Kyanrakuta where kyanrakutaID=6
go
create proc kyan7
as
select kyanName, kyanCV, kyanShokai, kyanImage from Kyanrakuta where kyanrakutaID=7
go
create proc kyan8
as
select kyanName, kyanCV, kyanShokai, kyanImage from Kyanrakuta where kyanrakutaID=8
go
create proc br1
as
select DVDMai, title, naiyo, images from BrurayAndDVD where bruDVDID=1
go
create proc br2
as
select DVDMai, title, naiyo, images from BrurayAndDVD where bruDVDID=2
go
create proc br3
as
select DVDMai, title, naiyo, images from BrurayAndDVD where bruDVDID=3
go
create proc br4
as
select DVDMai, title, naiyo, images from BrurayAndDVD where bruDVDID=4
go
create proc br5
as
select DVDMai, title, naiyo, images from BrurayAndDVD where bruDVDID=5
go
create proc music1
as
select title, naiyo, images from Music where musicID=1
go
create proc music2
as
select title, naiyo, images from Music where musicID=2
go
create proc music3
as
select title, naiyo, images from Music where musicID=3
go
create proc gen1
as
select title, naiyo, images from Gensaku where gensakuID=1
go
create proc gen2
as
select title, naiyo, images from Gensaku where gensakuID=2
go
--drop proc gen2