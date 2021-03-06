﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="スタッフ＆キャスト-TVアニメ「新しいセカイプロジェクト」公式サイト.aspx.cs" Inherits="NewWordProject.StaffAndCast.スタッフ_キャスト_TVアニメ_新しいセカイプロジェクト_公式サイト" %>

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
                <a href="../News/ニュース-TVアニメ「新しいセカイプロジェクト」公式サイト.aspx"><span id="menu">ニュース</span></a>
                <a href="../OnAir/放送＆配信-TVアニメ「新しいセカイプロジェクト」公式サイト.aspx"><span id="menu">放送＆配信</span></a>
                <a href="./スタッフ＆キャスト-TVアニメ「新しいセカイプロジェクト」公式サイト.aspx"><span id="menu">スタッフ＆キャスト</span></a>
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
                <div id="title" align="center"><span id="ttstyle">スタッフ＆キャスト</span></div>
            </div>
            <div id="naiyo">
                <table align="center">
                    <tr>
                        <td align="center">
                            <div id="menu_ss1">
                                <span id="staff">Staff</span>
                            </div>
                        </td>
                        <td align="center">
                            <div id="menu_ss1">
                                <span id="staff">Cast</span>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div id="hah">
                                
                                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
                                    <ItemTemplate>
                                        &nbsp;<asp:Label ID="staffNameLabel" runat="server" Text='<%# Eval("staffName") %>' />
                                        <asp:Label ID="shigotoLabel" runat="server" Text='<%# Eval("shigoto") %>' />
                                        <br />
                                        <br />
                                    </ItemTemplate>
                                </asp:DataList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conn %>" SelectCommand="SELECT [staffName], [shigoto] FROM [Staff]"></asp:SqlDataSource>
                                
                            </div>
                        </td>
                        <td>
                            <div id="hah">
                                
                                <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource2">
                                    <ItemTemplate>
                                        <asp:Label ID="shigotoLabel" runat="server" Text='<%# Eval("shigoto") %>' />
                                        <asp:Label ID="staffNameLabel" runat="server" Text='<%# Eval("staffName") %>' />
                                        <br />
<br />
                                    </ItemTemplate>
                                </asp:DataList>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:conn %>" SelectCommand="SELECT [shigoto], [staffName] FROM [Cast]"></asp:SqlDataSource>
                                
                            </div>
                        </td>
                    </tr>
                </table>
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
