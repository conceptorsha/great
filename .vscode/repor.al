report 50104 studentRegistrationReport
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultRenderingLayout = LayoutName;

    dataset
    {
        dataitem(StudentRegistration; "studentRegistration")
        {
            column(RegistrationId; RegistrationId)
            {

            }

            column(LastName; LastName)
            {

            }

            column(Email; email)
            {

            }
            column(Address; Address)
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
                    field(Name; ' student Registration ')
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