page 50103 "Student List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = StudentRegistration;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Name; REC.RegistrationId)
                {
                    ApplicationArea = All;

                }
                field(LastName; Rec.LastName)
                {

                }
                field("First Name"; Rec."First Name")
                {

                }

            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }
}