page 50101 "student Application card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = StudentApplication;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("Application id"; Rec."Application id")
                {
                    ApplicationArea = All;

                }
                field(DateOfBirth; Rec.DateOfBirth)
                {

                }
                field("Phone Number"; Rec."Phone Number")
                {

                }
                field(Email; Rec.Email)
                {

                }
                field(LastName; Rec.LastName)
                {

                }
                field(qualified; Rec.qualified)
                {

                }

            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Register)
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
                    ObjStudentRegister.Reset();
                    if ObjStudentRegister.FindLast() then
                        Id := ObjStudentRegister.RegistrationId + 1
                    else
                        Id := 1;

                    ObjStudentRegister.Init();
                    ObjStudentRegister.RegistrationId := Id;
                    ObjStudentRegister."Application id" := Rec."Application id";
                    ObjStudentRegister."First Name" := Rec."First Name";
                    ObjStudentRegister.LastName := Rec.LastName;
                    if ObjStudentRegister.Insert(true) then
                        Message('student registerred');
                end;
            }
        }
    }

    var
        ObjStudentRegister: record StudentRegistration;
        Id: Integer;
}