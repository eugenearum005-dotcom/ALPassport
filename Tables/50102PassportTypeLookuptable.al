table 50102 "Passport Type Lookup Table"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Passport Code"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Passport Page Counter"; Code[40])
        {
            DataClassification = ToBeClassified;
        }
        field(2; "Passport Description"; Text[100])
        {
            DataClassification = ToBeClassified;

        }

    }
    keys
    {
        key(Key1; "Passport Code", "Passport Page Counter")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
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