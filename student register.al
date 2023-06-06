table 50100 StudentRegistration
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; RegistrationId; Integer)
        {
            DataClassification = ToBeclassified;
        }

        field(2; "First Name"; Text[50])

        {
            DataClassification = ToBeClassified;

        }
        field(3; "LastName"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(4; "DateOfBirth"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(5; "Address"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(6; "Email"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(7; "Phone Number"; Text[20])
        {
            DataClassification = ToBeClassified;
        }
        field(8; "Preferred Program"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(9; "Applicati on Date"; DateTime)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; RegistrationId)
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}