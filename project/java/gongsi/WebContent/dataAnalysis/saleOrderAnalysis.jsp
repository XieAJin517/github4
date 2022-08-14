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
<title>��ʾ��Ʒ�������ͳ�Ƶı�ͼ</title>
</head>
<body>
<%  
List<StatisticsBean> saleOrderTotals=(List)request.getAttribute("kindSaleOrderTotals");
DefaultCategoryDataset dataset=new DefaultCategoryDataset();
String kindName="";
int numberTotal;
float moneyTotal;
int i=0;

//����Ĵ������ɸ������ͳ����Ʒ���������ͽ�

for(i=0;i<saleOrderTotals.size();i++) {
	kindName=saleOrderTotals.get(i).getName();
	numberTotal=saleOrderTotals.get(i).getInumber1();
	moneyTotal=saleOrderTotals.get(i).getFnumber1();
	dataset.addValue(numberTotal, "����", kindName);
	dataset.addValue(moneyTotal, "���", kindName);
  }

//����ͼ��Ľ���
String title="�����ͳ����Ʒ�������";
JFreeChart chart=ChartFactory.createBarChart3D(title, "���", "������������", dataset, PlotOrientation.VERTICAL, true, false, false);

//���н��������������
chart.getTitle().setFont(new Font("΢���ź�", Font.BOLD, 30));
//���õײ�bar�е�������ʽ
chart.getLegend().setItemFont(new Font("΢���ź�", Font.ITALIC, 20));

CategoryPlot categoryPlot=chart.getCategoryPlot();


//���ú������������ʽ
categoryPlot.getDomainAxis().setLabelFont(new Font("΢���ź�", Font.PLAIN, 15));
//���ú�����С����������ʽ
categoryPlot.getDomainAxis().setTickLabelFont(new Font("΢���ź�",Font.PLAIN,14));

//��������������������ʽ
categoryPlot.getRangeAxis().setLabelFont(new Font("΢���ź�",Font.PLAIN,15));
//����ǰ��ɫ͸����
categoryPlot.setForegroundAlpha(0.7F);

//��ͼ�ĳ�����
BarRenderer renderer = new BarRenderer();
     renderer.setIncludeBaseInRange(true);     // ��ʾÿ��������ֵ�����޸ĸ���ֵ����������
renderer.setBaseItemLabelGenerator(new StandardCategoryItemLabelGenerator());
renderer.setBaseItemLabelsVisible(true);
renderer.setBaseOutlinePaint(Color.BLACK); // �������ӱ߿���ɫ 
renderer.setDrawBarOutline(true); // �������ӱ߿�ɼ�
renderer.setMaximumBarWidth(0.08);//�������������
									//������������ã���ʹ�����������Ӽ���뷽��ʧЧ
renderer.setItemMargin(0);		  // ����ͬkey  ��ʱ�ڵ����Ӽ����

CategoryPlot categoryplot = (CategoryPlot) chart.getPlot();
categoryplot.setRenderer(renderer);

String filenameKind=ServletUtilities.saveChartAsPNG(chart, 1000, 800, session);
String graphURLKind=request.getContextPath()+"/DisplayChart?filename="+filenameKind; 

//����Ĵ������ɸ��ݳ���ͳ����Ʒ���������ͽ�    
//List<SaleOrderTotal> custSaleOrderTotals=(List)request.getAttribute("custSaleOrderTotals");  
saleOrderTotals=(List)request.getAttribute("custSaleOrderTotals");    
DefaultCategoryDataset datasetCity = new DefaultCategoryDataset();
String cityName="";
for(i=0;i<saleOrderTotals.size();i++) {
	cityName=saleOrderTotals.get(i).getName();
	numberTotal=saleOrderTotals.get(i).getInumber1();
	moneyTotal=saleOrderTotals.get(i).getFnumber1();
	datasetCity.addValue(numberTotal, "����", cityName);
	datasetCity.addValue(moneyTotal, "���", cityName);
}


String title1="������ͳ����Ʒ�������";
JFreeChart chartCity=ChartFactory.createBarChart3D(title1, "��������", "������������", datasetCity, PlotOrientation.VERTICAL, true, false, false);

//���н��������������
chartCity.getTitle().setFont(new Font("΢���ź�", Font.BOLD, 30));
//���õײ�bar�е�������ʽ
chartCity.getLegend().setItemFont(new Font("΢���ź�", Font.ITALIC, 20));

CategoryPlot categoryPlot1=chartCity.getCategoryPlot();


//���ú������������ʽ
categoryPlot1.getDomainAxis().setLabelFont(new Font("΢���ź�", Font.PLAIN, 15));
//���ú�����С����������ʽ
categoryPlot1.getDomainAxis().setTickLabelFont(new Font("΢���ź�",Font.PLAIN,14));

//��������������������ʽ
categoryPlot1.getRangeAxis().setLabelFont(new Font("΢���ź�",Font.PLAIN,15));
//����ǰ��ɫ͸����
categoryPlot1.setForegroundAlpha(0.7F);

//��ͼ�ĳ�����
BarRenderer renderer1 = new BarRenderer();
renderer1.setIncludeBaseInRange(true);     // ��ʾÿ��������ֵ�����޸ĸ���ֵ����������
renderer1.setBaseItemLabelGenerator(new StandardCategoryItemLabelGenerator());
renderer1.setBaseItemLabelsVisible(true);
renderer1.setBaseOutlinePaint(Color.BLACK); // �������ӱ߿���ɫ 
renderer1.setDrawBarOutline(true); // �������ӱ߿�ɼ�
renderer1.setMaximumBarWidth(0.08);//�������������
									//������������ã���ʹ�����������Ӽ���뷽��ʧЧ
renderer1.setItemMargin(0);		  // ����ͬkey  ��ʱ�ڵ����Ӽ����

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
