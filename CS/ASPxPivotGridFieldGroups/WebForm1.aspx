<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" 
Inherits="ASPxPivotGridFieldGroups.WebForm1" %>

<%@ Register Assembly="DevExpress.Web.ASPxPivotGrid.v15.2, Version=15.2.5.0, 
Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxPivotGrid" TagPrefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <dx:ASPxPivotGrid ID="ASPxPivotGrid1" runat="server" ClientIDMode="AutoID" 
            DataSourceID="AccessDataSource1" Theme="Metropolis">
            <Fields>
                <dx:PivotGridField ID="fieldCountry" AreaIndex="0" FieldName="Country" 
                    Visible="False">
                </dx:PivotGridField>
                <dx:PivotGridField ID="fieldSalesPerson" AreaIndex="0" Caption="Sales Person" 
                    FieldName="Sales_Person" Visible="False">
                </dx:PivotGridField>
                <dx:PivotGridField ID="fieldExtendedPrice" Area="DataArea" AreaIndex="0" 
                    Caption="Extended Price" FieldName="Extended_Price">
                </dx:PivotGridField>
                <dx:PivotGridField ID="fieldOrderYear" Area="ColumnArea" AreaIndex="0" 
                    Caption="Year" FieldName="OrderDate" GroupInterval="DateYear">
                </dx:PivotGridField>
                <dx:PivotGridField ID="fieldCategoryName" Area="RowArea" AreaIndex="0" 
                    Caption="Category" FieldName="CategoryName">
                </dx:PivotGridField>
                <dx:PivotGridField ID="fieldProductName" Area="RowArea" AreaIndex="1" 
                    Caption="Product" FieldName="ProductName">
                </dx:PivotGridField>
                <dx:PivotGridField ID="fieldOrderQuarter" Area="ColumnArea" AreaIndex="1" 
                    Caption="Quarter" ExpandedInFieldsGroup="False" FieldName="OrderDate" 
                    GroupInterval="DateQuarter" ValueFormat-FormatString="Quarter {0}" 
                    ValueFormat-FormatType="Custom">
                </dx:PivotGridField>
                <dx:PivotGridField ID="fieldOrderMonth" Area="ColumnArea" AreaIndex="2" 
                    Caption="Month" FieldName="OrderDate" GroupInterval="DateMonth">
                </dx:PivotGridField>
            </Fields>
        </dx:ASPxPivotGrid>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/nwind.mdb" 
            SelectCommand="SELECT [Country], [Sales Person] AS Sales_Person, 
            [Extended Price] AS Extended_Price, [OrderDate], [CategoryName], 
            [ProductName] FROM [SalesPerson]">
        </asp:AccessDataSource>
    </div>
    </form>
</body>
</html>
