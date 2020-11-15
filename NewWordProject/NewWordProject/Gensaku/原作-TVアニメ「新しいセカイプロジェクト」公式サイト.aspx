<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="原作-TVアニメ「新しいセカイプロジェクト」公式サイト.aspx.cs" Inherits="NewWordProject.Gensaku.原作_TVアニメ_新しいセカイプロジェクト_公式サイト" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>放送＆配信-TVアニメ「新しいセカイプロジェクト」公式サイト</title>
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
<body id="body">
    <form id="form1" runat="server">
        <div>
            <nav>
        <div id="myNav" class="overlay">
            <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
            <div class="overlay-content">
                <a href="../Top/TVアニメ「新しいセカイプロジェクト」公式サイト.aspx"><img id="logo" src="./images/logo2.PNG"></a>
                <a href="../Top/TVアニメ「新しいセカイプロジェクト」公式サイト.aspx"><span id="menu">トップ</span></a>
                <a href="../News/ニュース-TVアニメ「新しいセカイプロジェクト」公式サイト.aspx"><span id="menu">ニュース</span></a>
                <a href="./放送＆配信-TVアニメ「新しいセカイプロジェクト」公式サイト.aspx"><span id="menu">放送＆配信</span></a>
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
        <div align="center">
            <a href="../top/TVアニメ「新しいセカイプロジェクト」公式サイト.aspx"><img id="logo" src="./images/kumakuma.svg"></a>
        </div>
        <br />
    </nav>
    <section id="ss">
        <aside>
            <div>
                <div id="title" align="center" style="color:white">原作</div>
            </div>
            <div id="naiyo" align="center">
                <div id="nana">
                    <div>
                        <div id="menu_ss1">
                            <span>小説<br />--------------------------------------------------------------------------------------<br />
                            
                            </span>
                            <div align="center">
                                <!--asp.net-->
                                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="4">
                                    <ItemTemplate>
                                        <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl='<%# "~/Gensaku/images/"+Eval("images") %>' NavigateUrl='<%# Eval("naiyo", "{0}") %>'>[HyperLink1]</asp:HyperLink>
                                        <br />
<br />
                                    </ItemTemplate>
                                </asp:DataList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conn %>" SelectCommand="gen1" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                            </div>
                           
                        </div>
                        <br />
                        <div id="menu_ss2">
                            <span>コミックス<br />--------------------------------------------------------------------------------------<br /></span>
                            <div align="center">
                                <!--asp.net-->
                                <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource2" RepeatColumns="4">
                                    <ItemTemplate>
                                        <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl='<%# "~/Gensharu/images/"+Eval("images") %>' NavigateUrl='<%# Eval("naiyo", "{0}") %>'>[HyperLink1]</asp:HyperLink>
                                        <br />
                                        <br />
                                    </ItemTemplate>
                                </asp:DataList>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:conn %>" SelectCommand="gen2" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                            </div>
                            
                        </div>
                        <br />
                        <div id="menu_ss3">
                            <span>見放題配信<br />--------------------------------------------------------------------------------------<br /></span>
                            <table align="center">
                                <tr>
                                    <td>
                                        <div class="combobox">
                                            <a href="http://www.nicovideo.jp/"
                                                target="_blank">niconico<span>（ニコニコ生放送／ニコニコチャンネル）</span></a>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="combobox">
                                            <a href="https://gyao.yahoo.co.jp/ct/anime/" target="_blank">GYAO!</a>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="combobox">
                                            <a href="http://video.hikaritv.net/" target="_blank">ひかりTV</a>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="combobox">
                                            <a href="http://fod.fujitv.co.jp/" target="_blank">FOD</a>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="combobox">
                                            <a href="http://www.b-ch.com/" target="_blank">バンダイチャンネル</a>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="combobox">
                                            <a href="https://www.happyon.jp/" target="_blank">Hulu</a>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="combobox">
                                            <a href="http://jvod.myjcom.jp/" target="_blank">J:COMオンデマンド</a>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="combobox">
                                            <a href="https://web.videopass.auone.jp/c/telasa/"
                                                target="_blank">TELASA</a>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="combobox">
                                            <a href="https://video.unext.jp/genre/anime" target="_blank">U-NEXT</a>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="combobox">
                                            <a href="https://animehodai.my.Softbank.jp/lp/sp/alpha/spv/index.aspx"
                                                target="_blank">アニメ放題</a>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="combobox">
                                            <a href="https://www.tv-tokyo.co.jp/anime/" target="_blank">あにてれ</a>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="combobox">
                                            <a href="https://www.amazon.co.jp/Prime-Video/b?ie=UTF8&node=3535604051"
                                                target="_blank">Amazon</a>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <br />
                        <div id="menu_ss3">
                            <span>その他配信サービス<br />--------------------------------------------------------------------------------------<br /></span>
                            <table align="center">
                                <tr>
                                    <td>
                                        <div class="combobox">
                                            <a href="http://video.rakuten.co.jp/genre/animation/"
                                                target="_blank">Rakuten TV</a>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="combobox">
                                            <a href="http://www.dmm.com/digital/videomarket/anime/"
                                                target="_blank">DMM.com</a>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="combobox">
                                            <a href="http://www.videomarket.jp/" target="_blank">ビデオマーケット</a>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="combobox">
                                            <a href="http://a.happydouga.jp/" target="_blank">HAPPY!動画</a>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="combobox">
                                            <a href="http://mfplus.jp/" target="_blank">ムービーフルplus</a>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </aside>
        <footer>
            <div id="info" align="center">
                <span id="share">シェアする</span>
                <div id="tw"><a href="https://twitter.com/aokidaisuke91"><img id="icon" src="./images/s1.jpg"></a>
                </div>
            </div>
        </footer>
    </section>
        </div>
    </form>
</body>
</html>
