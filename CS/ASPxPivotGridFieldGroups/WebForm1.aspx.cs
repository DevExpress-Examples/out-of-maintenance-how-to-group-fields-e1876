using System;
using DevExpress.Web.ASPxPivotGrid;

namespace ASPxPivotGridFieldGroups
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Creates a PivotGridWebGroup instance.
            PivotGridWebGroup groupOrderDate = new PivotGridWebGroup();
            
            // Adds fields to the created group.
            groupOrderDate.Fields.Add(fieldOrderYear);
            groupOrderDate.Fields.Add(fieldOrderQuarter);
            groupOrderDate.Fields.Add(fieldOrderMonth);

            // Adds the created group to the collection of the ASPxPivotGrid groups.
            ASPxPivotGrid1.Groups.Add(groupOrderDate);
        }
    }
}