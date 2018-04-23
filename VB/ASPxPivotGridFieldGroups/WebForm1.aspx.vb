Imports System
Imports DevExpress.Web.ASPxPivotGrid

Namespace ASPxPivotGridFieldGroups
    Partial Public Class WebForm1
        Inherits System.Web.UI.Page

        Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
            ' Creates a PivotGridWebGroup instance.
            Dim groupOrderDate As New PivotGridWebGroup()

            ' Adds fields to the created group.
            groupOrderDate.Fields.Add(fieldOrderYear)
            groupOrderDate.Fields.Add(fieldOrderQuarter)
            groupOrderDate.Fields.Add(fieldOrderMonth)

            ' Adds the created group to the collection of the ASPxPivotGrid groups.
            ASPxPivotGrid1.Groups.Add(groupOrderDate)
        End Sub
    End Class
End Namespace