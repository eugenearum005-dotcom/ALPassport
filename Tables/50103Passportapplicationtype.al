table 50103 "Passport Application Type"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Type Key"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(10; "Passport Application Type Code"; Code[40])
        {
            DataClassification = ToBeClassified;

        }
    }

    keys
    {
        key(Key1; "Type Key", "Passport Application Type Code")
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