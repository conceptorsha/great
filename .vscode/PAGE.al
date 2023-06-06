page 50100 studentApplication
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = StudentApplication;
    CardPageId = "student Application card";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Name; REC.ApplicationId)
                {
                    ApplicationArea = All;

                }
                field(LastName; Rec.LastName)
                {

                }
                field("First Name"; Rec."First Name")
                {

                }
                field(qualified; rec.qualified)
                {
                    ApplicationArea = All;
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