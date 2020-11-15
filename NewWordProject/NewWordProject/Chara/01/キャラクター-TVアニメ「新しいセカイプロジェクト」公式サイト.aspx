<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="キャラクター-TVアニメ「新しいセカイプロジェクト」公式サイト.aspx.cs" Inherits="NewWordProject.Chara._01.キャラクター_TVアニメ_新しいセカイプロジェクト_公式サイト" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>キャラクター-TVアニメ「新しいセカイプロジェクト」公式サイト</title>
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
                <a href="../../Top/TVアニメ「新しいセカイプロジェクト」公式サイト.aspx"><img id="logo" src="./images/logo2.PNG"></a>
                <a href="../../Top/TVアニメ「新しいセカイプロジェクト」公式サイト.aspx"><span id="menu">トップ</span></a>
                <a href="../../News/ニュース-TVアニメ「新しいセカイプロジェクト」公式サイト.aspx"><span id="menu">ニュース</span></a>
                <a href="../../OnAir/放送＆配信-TVアニメ「新しいセカイプロジェクト」公式サイト.aspx"><span id="menu">放送＆配信</span></a>
                <a href="../../StaffAndCast/スタッフ＆キャスト-TVアニメ「新しいセカイプロジェクト」公式サイト.aspx"><span
                        id="menu">スタッフ＆キャスト</span></a>
                <a href="../../Story/ストーリー-TVアニメ「新しいセカイプロジェクト」公式サイト.aspx"><span id="menu">ストーリー</span></a>
                <a href="../キャラクター-TVアニメ「新しいセカイプロジェクト」公式サイト.aspx"><span id="menu">キャラクター</span></a>
                <a href="../../BrurayAndDVD/01/BrurayAndDVD-TVアニメ「新しいセカイプロジェクト」公式サイト.aspx"><span
                        id="menu">Blu-ray&DVD</span></a>
                <a href="../../Music/ミュージック-TVアニメ「新しいセカイプロジェクト」公式サイト.aspx"><span id="menu">ミュージック</span></a>
                <a href="../../Gensaku/原作-TVアニメ「新しいセカイプロジェクト」公式サイト.aspx"><span id="menu">原作</span></a>
                <a href="../../Goods/グッズ-TVアニメ「新しいセカイプロジェクト」公式サイト.aspx"><span id="menu">グッズ</span></a>
                <a href="../../Film/ムービー-TVアニメ「新しいセカイプロジェクト」公式サイト.aspx"><span id="menu">ムービー</span></a>
                <a href="../../Supesharu/スペシャル-TVアニメ「新しいセカイプロジェクト」公式サイト.aspx"><span id="menu">スペシャル</span></a>
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
                <div id="title" align="center"><span id="ttstyle">キャラクター</span></div>
            </div>
            <div id="naiyo">
                <div id="setsume" align="center">

                    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatLayout="Flow">
                        <ItemTemplate>
                            <asp:Label ID="kyanNameLabel" runat="server" Text='<%# Eval("kyanName") %>' />
                            <br />
                            <asp:Label ID="kyanCVLabel" runat="server" Text='<%# Eval("kyanCV") %>' />
                            <br />
                            <asp:Label ID="kyanShokaiLabel" runat="server" Text='<%# Eval("kyanShokai") %>' />
                            <br />
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/Chara/images/"+Eval("kyanImage") %>' />
                            <br />
<br />
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conn %>" SelectCommand="kyan1" SelectCommandType="StoredProcedure"></asp:SqlDataSource>

                </div>
                <br />
                <div id="chara">
                    <table align="center">
                        <tr>
                            <td><a href="./キャラクター-TVアニメ「新しいセカイプロジェクト」公式サイト.aspx"><img id="img1"
                                        src="./images/l3.png"></a></td>
                            <td><a href="../02/キャラクター-TVアニメ「新しいセカイプロジェクト」公式サイト.aspx"><img id="img"
                                        src="./images/l3(1).png"></a></td>
                            <td><a href="../03/キャラクター-TVアニメ「新しいセカイプロジェクト」公式サイト.aspx"><img id="img"
                                        src="./images/l3(2).png"></a></td>
                            <td><a href="../04/キャラクター-TVアニメ「新しいセカイプロジェクト」公式サイト.aspx"><img id="img"
                                        src="./images/l3(3).png"></a></td>
                        </tr>
                        <tr>
                            <td><a href="../05/キャラクター-TVアニメ「新しいセカイプロジェクト」公式サイト.aspx"><img id="img"
                                        src="./images/l3(4).png"></a></td>
                            <td><a href="../06/キャラクター-TVアニメ「新しいセカイプロジェクト」公式サイト.aspx"><img id="img"
                                        src="./images/l3(5).png"></a></td>
                            <td><a href="../07/キャラクター-TVアニメ「新しいセカイプロジェクト」公式サイト.aspx"><img id="img"
                                        src="./images/l3(6).png"></a></td>
                            <td><a href="../08/キャラクター-TVアニメ「新しいセカイプロジェクト」公式サイト.aspx"><img id="img"
                                        src="./images/l3(7).png"></a></td>
                        </tr>
                    </table>
                </div>
                <br />

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
