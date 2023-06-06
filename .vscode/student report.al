report 50103 StudentApplicationReport
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultRenderingLayout = LayoutName;

    dataset
    {

        dataitem(student; StudentApplication)
        {
            column(Applicationid; applicationid)
            {

            }
            column("First_Name"; "first Name")
            {

            }
            column("Last_Name"; "LastName")
            {

            }
            column("address"; "address")
            {

            }

        }
    }

    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                    field(name; 'Student Application')
                    {
                        ApplicationArea = All;

                    }
                }
            }
        }

        actions
        {
            area(processing)
            {
                action(ActionName)
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    rendering
    {
        layout(LayoutName)
        {
            Type = RDLC;
            LayoutFile = 'mylayout.rdl';
        }
    }

    var
        myInt: Integer;
}