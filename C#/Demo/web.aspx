<%@ Page Language="C#" AutoEventWireup="true" CodeFile="web.aspx.cs" Inherits="web" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="box">
    <div id="text">
    <img src="img/1703.png" width="205" height="30" /><br />
     &nbsp;&nbsp;Native：在开发过程中使用编译器在C/C++等语言直接编译成机器码，运行的时候能够充分利用系统性能，这是最快的。iOS的Object C和Android 的NDK都是这种模式。2）Dalvik：Android L系统之前所有Android版本的运行方式，采用的是字节码，在运行的时候解释执行变成机器能够识别的机器码。这个过程是比较缓慢的。
    </div>
    <div id="text01">
    <img src = "img/1704.png" width="207" height="19" /><br />
    &nbsp;&nbsp;Android 4.4开始推出的新的运行环境，在APP安装的时候使用dex2oat工具直接把DEX文件转换为机器码文件，运行的时候以机器码方式运行，可以充分利用系统性能；此外，改进的内存回收机制使得ART运行模式下的内存回收速度只有Dalvik运行时模式下的50%，也能够提升系统运行速度。
    </div>
    </form>
</body>
</html>
