<%@page import="org.jfree.data.category.DefaultCategoryDataset"%>
<%@ page language="java" contentType="text/html; charset=GBK" pageEncoding="GBK"%>
<%@ page import="java.io.*" %>
<%@ page import="org.jfree.chart.ChartFactory" %>
<%@ page import="org.jfree.chart.JFreeChart" %>
<%@ page import="org.jfree.chart.*" %>
<%@ page import="org.jfree.chart.servlet.ServletUtilities" %>
<%@ page import="java.util.List"%>
<%@ page import="org.jfree.data.general.PieDataset" %>
<%@ page import="org.jfree.data.general.DefaultPieDataset" %>
<%@ page import="org.jfree.data.category.DefaultCategoryDataset" %>
<%@ page import="java.awt.Font" %>>
<%@ page import="org.jfree.chart.plot.PiePlot"%>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="java.text.DecimalFormat" %>
<%@ page import="org.jfree.chart.labels.StandardPieSectionLabelGenerator" %>
<%@ page import="org.jfree.chart.plot.PlotOrientation"%>
<%@ page import="org.jfree.chart.title.TextTitle" %>
<%@ page import="org.jfree.chart.plot.CategoryPlot" %>
<%@ page import="org.jfree.chart.axis.NumberAxis" %>
<%@ page import="org.jfree.chart.axis.CategoryAxis" %>
<%@ page import="org.jfree.chart.renderer.category.BarRenderer3D" %>
<%@ page import="org.jfree.chart.labels.StandardCategoryItemLabelGenerator" %>
<%@ page import="org.jfree.chart.axis.AxisLocation" %>
<%@ page import=" java.awt.Color" %>
<%@ page import="org.jfree.chart.labels.ItemLabelPosition" %>
<%@ page import=" org.jfree.chart.labels.ItemLabelAnchor" %>
<%@ page import=" org.jfree.ui.TextAnchor" %>
<%@ page import="bean.StatisticsBean" %>
<%@ page import="java.util.ArrayList" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>显示商品按照类别统计的饼图</title>
</head>
<body>
<%  
List<StatisticsBean> kindProductTotals=(List)request.getAttribute("kindProductTotals");
List<StatisticsBean> supplierProductTotals=(List)request.getAttribute("supplierProductTotals");
DefaultPieDataset datasetPie = new DefaultPieDataset();
DefaultCategoryDataset datasetBar = new DefaultCategoryDataset();

String kinName,supplierName;
int totalProduct;
int i=0;
for(i=0;i<kindProductTotals.size();i++) {
	kinName=kindProductTotals.get(i).getName();
	totalProduct=kindProductTotals.get(i).getInumber1();
    datasetPie.setValue(kinName,totalProduct);
  }

for(i=0;i<supplierProductTotals.size();i++) {
	supplierName=supplierProductTotals.get(i).getName();
	totalProduct=supplierProductTotals.get(i).getInumber1();
    datasetBar.setValue(totalProduct,supplierName,supplierName);
  }

//下面的代码生成饼图
//DefaultPieDataset dataset =(DefaultPieDataset)request.getAttribute("dataset");
StandardChartTheme standardChartTheme = new StandardChartTheme("CN");//创建主题样式    
standardChartTheme.setExtraLargeFont(new Font("宋书", Font.BOLD, 25));//设置标题字体  
standardChartTheme.setRegularFont(new Font("宋书", Font.PLAIN, 15));//设置图例的字体 
standardChartTheme.setLargeFont(new Font("宋书", Font.PLAIN, 15));//设置轴向的字体
ChartFactory.setChartTheme(standardChartTheme); //应用主题样式  

   JFreeChart chartPie = ChartFactory.createPieChart("按类别统计商品种类",datasetPie, true, true,  false);
   
   PiePlot plot = (PiePlot) chartPie.getPlot();
// 图片中显示百分比:自定义方式，{0} 表示选项， {1} 表示数值， {2} 表示所占比例 ,小数点后两位
   plot.setLabelGenerator(new StandardPieSectionLabelGenerator("{0}:{1}({2})", NumberFormat.getNumberInstance(),new DecimalFormat("0.00%")));
// 图例显示百分比:自定义方式， {0} 表示选项， {1} 表示数值， {2} 表示所占比例
   plot.setLegendLabelGenerator(new StandardPieSectionLabelGenerator(
 "{0}:{1}({2})"));

    String filename=ServletUtilities.saveChartAsPNG(chartPie, 1000, 800, session);
    String graphURL=request.getContextPath()+"/DisplayChart?filename="+filename;

    //下面的代码生成条形图

    JFreeChart chartBar=ChartFactory.createBarChart("按供应商统计商品种类", "供应商名称", "商品种类数量", datasetBar, PlotOrientation.VERTICAL, true, true, false); 
    String filenameBar=ServletUtilities.saveChartAsPNG(chartBar, 1000, 800, session);
    String graphURLBar=request.getContextPath()+"/DisplayChart?filename="+filenameBar;

 %>
       
  <table border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td valign="top"><img src="<%=graphURL%>" width="700" height="600" /></td>
    <td valign="top"><div style="margin-left:100px;"><img src="<%=graphURLBar%>" width="700" height="600" /></div></td>
  </tr>
</table>
</body>
</html>
