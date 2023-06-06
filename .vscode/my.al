page 50104 "Student Registration List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = StudentRegistration;


    layout
    {
        area(Content)
        {
            repeater(RegistrationRepeater)
            {
                field("Application id"; rec."Application id")
                {
                    ApplicationArea = All;

                }
                field(LastName; Rec.LastName)
                {
                    Editable = false;
                }
                field("First Name"; Rec."First Name")
                {
                    Editable = false;
                }
                field("email"; rec."email")
                {
                    Editable = false;
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