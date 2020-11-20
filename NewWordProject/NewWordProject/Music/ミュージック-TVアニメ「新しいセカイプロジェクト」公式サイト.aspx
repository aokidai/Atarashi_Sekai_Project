<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ミュージック-TVアニメ「新しいセカイプロジェクト」公式サイト.aspx.cs" Inherits="NewWordProject.Music.ミュージック_TVアニメ_新しいセカイプロジェクト_公式サイト" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>スタッフ＆キャスト-TVアニメ「新しいセカイプロジェクト」公式サイト</title>
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
                <a href="./ニュース-TVアニメ「新しいセカイプロジェクト」公式サイト.aspx"><span id="menu">ニュース</span></a>
                <a href="../OnAir/放送＆配信-TVアニメ「新しいセカイプロジェクト」公式サイト.aspx"><span id="menu">放送＆配信</span></a>
                <a href="../StaffAndCast/スタッフ＆キャスト-TVアニメ「新しいセカイプロジェクト」公式サイト.aspx"><span id="menu">スタッフ＆キャスト</span></a>
                <a href="../Story/ストーリー-TVアニメ「新しいセカイプロジェクト」公式サイト.aspx"><span id="menu">ストーリー</span></a>
                <a href="../Chara/キャラクター-TVアニメ「新しいセカイプロジェクト」公式サイト.aspx"><span id="menu">キャラクター</span></a>
                <a href="../BrurayAndDVD/01/BrurayAndDVD-TVアニメ「新しいセカイプロジェクト」公式サイト.aspx"><span
                        id="menu">Blu-ray&DVD</span></a>
                <a href="./ミュージック-TVアニメ「新しいセカイプロジェクト」公式サイト.aspx"><span id="menu">ミュージック</span></a>
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
                <div id="title" align="center"><span id="ttstyle">ミュージック</span></div>
            </div>
            <div id="naiyo" align="center">
                <div id="nana" align="center">
                    <div>
                        <div id="menu_ss1">
                            <div>
                                <div class="box">
                                    <span class="title2">オープニング</span>
                                </div>
                                <div>
                                    <!--Naiyo-->
                                    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatLayout="Flow">
                                        <ItemTemplate>
                                            <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />
                                            <br />
                                            <asp:Label ID="naiyoLabel" runat="server" Text='<%# Eval("naiyo") %>' />
                                            <br />
                                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/Music/images/"+Eval("images") %>' />
                                            <br />
                                            <br />
                                        </ItemTemplate>
                                    </asp:DataList>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conn %>" SelectCommand="music1" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                                </div>
                            </div>
                        </div>
                        <br />
                        <div id="menu_ss2">
                            <div>
                                <div class="box">
                                    <span class="title2">エンディング</span>
                                </div>
                                <div>
                                    <!--Naiyo-->
                                    <asp:DataList ID="DataList4" runat="server" DataSourceID="SqlDataSource2" RepeatLayout="Flow">
                                        <ItemTemplate>
                                            <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />
                                            <br />
                                            <asp:Label ID="naiyoLabel" runat="server" Text='<%# Eval("naiyo") %>' />
                                            <br />
                                            <asp:Image ID="Image2" runat="server" ImageUrl='<%# "~/Music/images/"+Eval("images") %>' />
                                            <br />
                                        </ItemTemplate>
                                    </asp:DataList>
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:conn %>" SelectCommand="music2" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                                </div>
                            </div>
                        </div>
                        <br />
                        <div id="menu_ss2">
                            <div>
                                <div class="box">
                                    <span class="title2">オリジナルサウンドトラック</span>
                                </div>
                                <div align="center" style="text-align:center">
                                    <!--Naiyo-->
                                    <asp:DataList ID="DataList3" runat="server" DataSourceID="SqlDataSource3">
                                        <ItemTemplate>
                                            <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />
                                            <br />
                                            <asp:Label ID="naiyoLabel" runat="server" Text='<%# Eval("naiyo") %>' />
                                            <br />
                                            <asp:Image ID="Image3" runat="server" ImageUrl='<%# "~/Music/images/"+Eval("images") %>' />
                                            <br />
<br />
                                        </ItemTemplate>
                                    </asp:DataList>
                                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:conn %>" SelectCommand="music3" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                                </div>
                            </div>
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
