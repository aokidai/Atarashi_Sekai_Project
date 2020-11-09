<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TVアニメ「新しいセカイプロジェクト」公式サイト.aspx.cs" Inherits="NewWordProject.Top.TVアニメ_新しいセカイプロジェクト_公式サイト" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>TVアニメ「新しいセカイプロジェクト」公式サイト</title>
    <link rel="icon" type="image/png" sizes="32x16" href="images/star.png">
    <link rel="stylesheet" type="text/css" href="./css/style.css">
    <script type="text/javascript" src="./js/common.js"></script>
</head>
<script>
    function openNav() {
        document.getElementById("myNav").style.width = "100%";
    }

    function closeNav() {
        document.getElementById("myNav").style.width = "0%";
    }
</script>
<body id="body" style="background-image: url('./images/bg2.jpg');">
    <form id="form1" runat="server">
        <div>
            <nav>
        <div id="myNav" class="overlay">
            <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
            <div class="overlay-content">
                <a href="./TVアニメ「新しいセカイプロジェクト」公式サイト.aspx"><img id="logo" src="./images/logo2.PNG"></a>
                <a href="./TVアニメ「新しいセカイプロジェクト」公式サイト.aspx"><span id="menu">トップ</span></a>
                <a href="../News/ニュース-TVアニメ「新しいセカイプロジェクト」公式サイト.aspx"><span id="menu">ニュース</span></a>
                <a href="../OnAir/放送＆配信-TVアニメ「新しいセカイプロジェクト」公式サイト.aspx"><span id="menu">放送＆配信</span></a>
                <a href="../StaffAndCast/スタッフ＆キャスト-TVアニメ「新しいセカイプロジェクト」公式サイト.aspx"><span id="menu">スタッフ＆キャスト</span></a>
                <a href="../Story/ストーリー-TVアニメ「新しいセカイプロジェクト」公式サイト.aspx"><span id="menu">ストーリー</span></a>
                <a href="../Chara/キャラクター-TVアニメ「新しいセカイプロジェクト」公式サイト.aspx"><span id="menu">キャラクター</span></a>
                <a href="../BrurayAndDVD/01/BrurayAndDVD-TVアニメ「新しいセカイプロジェクト」公式サイト.aspx"><span
                        id="menu">Blu-ray&DVD</span></a>
                <a href="../Music/ミュージック-TVアニメ「新しいセカイプロジェクト」公式サイト.aspx"><span id="menu">ミュージック</span></a>
                <a href="../Gensaku/原作-TVアニメ「新しいセカイプロジェクト」公式サイト.aspx"><span id="menu">原作</span></a>
                <a href="../Goods/グッズ-TVアニメ「新しいセカイプロジェクト」公式サイト.aspx"><span id="menu">グッズ</span></a>
                <a href="../Film/ムービー-TVアニメ「新しいセカイプロジェクト」公式サイト.aspx"><span id="menu">ムービー</span></a>
                <a href="../Supesharu/スペシャル-TVアニメ「新しいセカイプロジェクト」公式サイト.aspx"><span id="menu">スペシャル</span></a>
            </div>
        </div>
        <span style="font-size:30px;cursor:pointer; float:right" onclick="openNav()">&#9776;</span>
    </nav>
    <article>
        <aside>
            <div id="left">
                <div id="clogo">
                    <a href="./TVアニメ「新しいセカイプロジェクト」公式サイト.aspx"><img id="logo2" src="./images/logo.PNG"></a>
                </div>
                <div id="jouhou">
                    <img id="jouhouImg" src="./images/jouhou.PNG">
                </div>
                <div class="jhtext">
                    <span id="text">引きこもりゲーマーのユナ、<br /></span>
                    <span id="text1">クマの着ぐるみで異世界の最強冒険者になる！<br /></span>
                    <span id="text2">意外な冒険物語、TVアニメ化決定！</span>
                </div>
                <div class="news">
                    <div id="boder"><span id="title">ニュース</span></div>
                </div>

                <div class="film">
                    <div id="boder"><span id="title">ムービー</span></div>
                    <iframe style="clear: both; margin-left: 5%;" width="395px" height="200px"
                        src="https://www.youtube.com/embed/m2VCJGsBZdM?autoplay=1&mute=1"></iframe>
                </div>
                <div class="twitter">
                    <div id="boder"><span id="title">ツイッター</span></div>
                    <div class="cont-footer-twitter lo-cont" style="float:left; margin-left:5%">
                        <div class="twitter-widget" style="text-align: center;">
                            <a class="twitter-timeline" style="text-align: center" ; data-height="270px" ;
                                data-width="400px" ； data-theme="white" data-link-color="#ef3488"
                                data-border-color="#ef3488" data-chrome="noheader nofooter noborders transparent"
                                href="https://twitter.com/aokidaisuke91">ツイートの新しいセカイプロジェクト</a>
                            <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
                        </div>
                    </div>
                </div>
                <div>
                    <a href="../Supesharu/Supesharu.aspx"><img id="ad" src="./images/ad1.gif"></a>
                    <br />
                    <a href="https://pash-up.jp/content/00000001"><img id="ad" src="./images/ad2.png"></a>
                </div>
                <div id="info">
                    <span id="share">シェアする</span>
                    <div id="tw"><a href="https://twitter.com/aokidaisuke91"><img id="icon" src="./images/s1.jpg"></a>
                    </div>
                </div>
        </aside>
        <section id="right" style="backgroud-image:url('./images/bg.jpg')">
        </section>
    </article>
        </div>
    </form>
</body>
</html>
