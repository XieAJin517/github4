<%@page import="org.jfree.data.category.DefaultCategoryDataset"%>
<%@ page language="java" contentType="text/html; charset=GBK" pageEncoding="GBK"%>
<%@ page import="java.io.*" %>
<%@ page import="org.jfree.chart.ChartFactory" %>
<%@ page import="org.jfree.chart.JFreeChart" %>
<%@ page import="org.jfree.chart.*" %>
<%@ page import="org.jfree.chart.servlet.ServletUtilities" %>
<%@ page import="java.util.List"%>
<%@ page import="org.jfree.data.general.DefaultPieDataset" %>
<%@ page import="org.jfree.data.category.DefaultCategoryDataset" %>
<%@ page import="java.awt.Font" %>
<%@ page import="org.jfree.chart.labels.StandardPieSectionLabelGenerator" %>
<%@ page import="org.jfree.chart.plot.PlotOrientation"%>
<%@ page import="org.jfree.chart.title.TextTitle" %>
<%@ page import="org.jfree.chart.plot.CategoryPlot" %>
<%@ page import="org.jfree.chart.axis.NumberAxis" %>
<%@ page import="org.jfree.chart.axis.CategoryAxis" %>
<%@ page import="org.jfree.chart.labels.StandardCategoryItemLabelGenerator" %>
<%@ page import="org.jfree.chart.axis.AxisLocation" %>
<%@ page import="java.awt.Color" %>
<%@ page import="org.jfree.chart.labels.ItemLabelPosition" %>
<%@ page import="org.jfree.chart.labels.ItemLabelAnchor" %>
<%@ page import="org.jfree.ui.TextAnchor" %>
<%@ page import="org.jfree.chart.renderer.category.BarRenderer" %>
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
List<StatisticsBean> saleOrderTotals=(List)request.getAttribute("kindSaleOrderTotals");
DefaultCategoryDataset dataset=new DefaultCategoryDataset();
String kindName="";
int numberTotal;
float moneyTotal;
int i=0;

//下面的代码生成根据类别统计商品销售数量和金额。

for(i=0;i<saleOrderTotals.size();i++) {
	kindName=saleOrderTotals.get(i).getName();
	numberTotal=saleOrderTotals.get(i).getInumber1();
	moneyTotal=saleOrderTotals.get(i).getFnumber1();
	dataset.addValue(numberTotal, "数量", kindName);
	dataset.addValue(moneyTotal, "金额", kindName);
  }

//生成图表的进程
String title="按类别统计商品销售情况";
JFreeChart chart=ChartFactory.createBarChart3D(title, "类别", "销售数量或金额", dataset, PlotOrientation.VERTICAL, true, false, false);

//集中解决中文乱码问题
chart.getTitle().setFont(new Font("微软雅黑", Font.BOLD, 30));
//设置底部bar中的字体样式
chart.getLegend().setItemFont(new Font("微软雅黑", Font.ITALIC, 20));

CategoryPlot categoryPlot=chart.getCategoryPlot();


//设置横坐标字体的样式
categoryPlot.getDomainAxis().setLabelFont(new Font("微软雅黑", Font.PLAIN, 15));
//设置横坐标小字体标题的样式
categoryPlot.getDomainAxis().setTickLabelFont(new Font("微软雅黑",Font.PLAIN,14));

//设置纵坐标标题的字体样式
categoryPlot.getRangeAxis().setLabelFont(new Font("微软雅黑",Font.PLAIN,15));
//设置前景色透明度
categoryPlot.setForegroundAlpha(0.7F);

//柱图的呈现器
BarRenderer renderer = new BarRenderer();
     renderer.setIncludeBaseInRange(true);     // 显示每个柱的数值，并修改该数值的字体属性
renderer.setBaseItemLabelGenerator(new StandardCategoryItemLabelGenerator());
renderer.setBaseItemLabelsVisible(true);
renderer.setBaseOutlinePaint(Color.BLACK); // 设置柱子边框颜色 
renderer.setDrawBarOutline(true); // 设置柱子边框可见
renderer.setMaximumBarWidth(0.08);//设置柱子最大宽度
									//柱子最大宽度设置，会使下面设置柱子间距离方法失效
renderer.setItemMargin(0);		  // 设置同key  三时期的柱子间距离

CategoryPlot categoryplot = (CategoryPlot) chart.getPlot();
categoryplot.setRenderer(renderer);

String filenameKind=ServletUtilities.saveChartAsPNG(chart, 1000, 800, session);
String graphURLKind=request.getContextPath()+"/DisplayChart?filename="+filenameKind; 

//下面的代码生成根据城市统计商品销售数量和金额。    
//List<SaleOrderTotal> custSaleOrderTotals=(List)request.getAttribute("custSaleOrderTotals");  
saleOrderTotals=(List)request.getAttribute("custSaleOrderTotals");    
DefaultCategoryDataset datasetCity = new DefaultCategoryDataset();
String cityName="";
for(i=0;i<saleOrderTotals.size();i++) {
	cityName=saleOrderTotals.get(i).getName();
	numberTotal=saleOrderTotals.get(i).getInumber1();
	moneyTotal=saleOrderTotals.get(i).getFnumber1();
	datasetCity.addValue(numberTotal, "数量", cityName);
	datasetCity.addValue(moneyTotal, "金额", cityName);
}


String title1="按城市统计商品销售情况";
JFreeChart chartCity=ChartFactory.createBarChart3D(title1, "城市名称", "销售数量或金额", datasetCity, PlotOrientation.VERTICAL, true, false, false);

//集中解决中文乱码问题
chartCity.getTitle().setFont(new Font("微软雅黑", Font.BOLD, 30));
//设置底部bar中的字体样式
chartCity.getLegend().setItemFont(new Font("微软雅黑", Font.ITALIC, 20));

CategoryPlot categoryPlot1=chartCity.getCategoryPlot();


//设置横坐标字体的样式
categoryPlot1.getDomainAxis().setLabelFont(new Font("微软雅黑", Font.PLAIN, 15));
//设置横坐标小字体标题的样式
categoryPlot1.getDomainAxis().setTickLabelFont(new Font("微软雅黑",Font.PLAIN,14));

//设置纵坐标标题的字体样式
categoryPlot1.getRangeAxis().setLabelFont(new Font("微软雅黑",Font.PLAIN,15));
//设置前景色透明度
categoryPlot1.setForegroundAlpha(0.7F);

//柱图的呈现器
BarRenderer renderer1 = new BarRenderer();
renderer1.setIncludeBaseInRange(true);     // 显示每个柱的数值，并修改该数值的字体属性
renderer1.setBaseItemLabelGenerator(new StandardCategoryItemLabelGenerator());
renderer1.setBaseItemLabelsVisible(true);
renderer1.setBaseOutlinePaint(Color.BLACK); // 设置柱子边框颜色 
renderer1.setDrawBarOutline(true); // 设置柱子边框可见
renderer1.setMaximumBarWidth(0.08);//设置柱子最大宽度
									//柱子最大宽度设置，会使下面设置柱子间距离方法失效
renderer1.setItemMargin(0);		  // 设置同key  三时期的柱子间距离

CategoryPlot categoryplot1 = (CategoryPlot) chartCity.getPlot();
categoryplot1.setRenderer(renderer);

String filenameCity=ServletUtilities.saveChartAsPNG(chartCity, 1000, 800, session);
String graphURLCity=request.getContextPath()+"/DisplayChart?filename="+filenameCity;


%>
       
  <table border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td valign="top"><img src="<%=graphURLKind%>" width="700" height="600" /></td>
    <td valign="top"><img src="<%=graphURLCity%>" width="700" height="600" /></td>
  </tr>
</table>
</body>
</html>
