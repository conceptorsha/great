page 50102 " student Registration Card "
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = StudentRegistration;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Name; rec."Application id")
                {
                    ApplicationArea = All;

                }
            }
            field(DateOfBirth; Rec.DateOfBirth)
            {
                Editable = false;
            }

            field("first name"; Rec."First Name")
            {
                Editable = false;
            }
            field("Phone Number"; Rec."Phone Number")
            {
                Editable = false;
            }
            field(Email; Rec.Email)
            {
                Editable = false;
            }
            field(LastName; Rec.LastName)
            {
                Editable = false;
            }
            field(Address; Rec.Address)
            {
                Editable = false;
            }
            field(qualified; Rec.qualified)
            {

            }
        }
    }


    actions
    {
        area(Processing)
        {
            action(Applied)
            {
                ApplicationArea = All;
                Image = Customer;
                PromotedCategory = Process;
                Promoted = true;
                Visible = Rec.qualified;

                trigger OnAction()
                var
                begin
                    //get id
                    ObjStudentApplication.Reset();
                    if ObjStudentApplication.FindLast() then
                        Id := ObjStudentApplication.ApplicationId + 1
                    else
                        Id := 1;

                    ObjStudentApplication.Init();
                    ObjStudentapplication.ApplicationId := Id;
                    ObjStudentapplication."Application id" := Rec."Application id";
                    ObjStudentapplication."First Name" := Rec."First Name";
                    ObjStudentapplication.LastName := Rec.LastName;
                    if ObjStudentApplication.Insert(true) then
                        Message('student applied');
                end;

            }
        }
    }

    var
        ObjStudentApplication: record StudentApplication;
        Id: Integer;
}