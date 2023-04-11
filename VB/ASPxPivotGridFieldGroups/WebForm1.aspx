<%@ Page Language="vb" AutoEventWireup="true" CodeBehind="WebForm1.aspx.vb" 
Inherits="ASPxPivotGridFieldGroups.WebForm1" %>

<%@ Register Assembly="DevExpress.Web.ASPxPivotGrid.v21.2, Version=21.2.13.0, 
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
            DataSourceID="SqlDataSource1" Theme="Metropolis" OptionsData-DataProcessingEngine="Optimized" IsMaterialDesign="False">
            <Fields>
                <dx:PivotGridField ID="fieldCountry" AreaIndex="0" 
                    Visible="False">
                    <DataBindingSerializable>
                        <dx:DataSourceColumnBinding ColumnName="Country" />
                    </DataBindingSerializable>
                </dx:PivotGridField>
                <dx:PivotGridField ID="fieldSalesPerson" AreaIndex="0" Caption="Sales Person" Visible="False">
                    <DataBindingSerializable>
                        <dx:DataSourceColumnBinding ColumnName="Sales_Person" />
                    </DataBindingSerializable>
                </dx:PivotGridField>
                <dx:PivotGridField ID="fieldExtendedPrice" Area="DataArea" AreaIndex="0" 
                    Caption="Extended Price">
                    <DataBindingSerializable>
                        <dx:DataSourceColumnBinding ColumnName="Extended_Price" />
                    </DataBindingSerializable>
                </dx:PivotGridField>
                <dx:PivotGridField ID="fieldOrderYear" Area="ColumnArea" AreaIndex="0" 
                    Caption="Year" FieldName="OrderDate">
                    <DataBindingSerializable>
                        <dx:DataSourceColumnBinding ColumnName="OrderDate" GroupInterval="DateYear" />
                    </DataBindingSerializable>
                </dx:PivotGridField>
                <dx:PivotGridField ID="fieldCategoryName" Area="RowArea" AreaIndex="0" 
                    Caption="Category">
                    <DataBindingSerializable>
                        <dx:DataSourceColumnBinding ColumnName="CategoryName" />
                    </DataBindingSerializable>
                </dx:PivotGridField>
                <dx:PivotGridField ID="fieldProductName" Area="RowArea" AreaIndex="1" 
                    Caption="Product">
                    <DataBindingSerializable>
                        <dx:DataSourceColumnBinding ColumnName="ProductName" />
                    </DataBindingSerializable>
                </dx:PivotGridField>
                <dx:PivotGridField ID="fieldOrderQuarter" Area="ColumnArea" AreaIndex="2" 
                    Caption="Quarter" ExpandedInFieldsGroup="False" 
                    GroupInterval="DateQuarter" ValueFormat-FormatString="Quarter {0}" 
                    ValueFormat-FormatType="Custom">
<ValueFormat FormatString="Quarter {0}" FormatType="Custom"></ValueFormat>
                    <DataBindingSerializable>
                        <dx:DataSourceColumnBinding ColumnName="OrderDate" GroupInterval="DateQuarter" />
                    </DataBindingSerializable>
                </dx:PivotGridField>
                <dx:PivotGridField ID="fieldOrderMonth" Area="ColumnArea" AreaIndex="1" 
                    Caption="Month">
                    <DataBindingSerializable>
                        <dx:DataSourceColumnBinding ColumnName="OrderDate" GroupInterval="DateMonth" />
                    </DataBindingSerializable>
                </dx:PivotGridField>
            </Fields>

<OptionsData DataProcessingEngine="Optimized"></OptionsData>
        </dx:ASPxPivotGrid>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
            SelectCommand="SELECT [Country], [Sales Person] AS Sales_Person, 
            [Extended Price] AS Extended_Price, [OrderDate], [CategoryName], 
            [ProductName] FROM [SalesPerson]"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>