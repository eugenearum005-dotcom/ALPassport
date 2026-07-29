table 50106 "Next of Kin Table"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Application No."; Code[20])
        {
            DataClassification = ToBeClassified;
            tableRelation = "Main Application Table"."Application ID";
        }
        field(5; "Next kin line no"; Integer)
        {
            MinValue = 1;
            AutoIncrement = true;
        }
        field(10; "Full Name"; Text[50]) { }
        field(20; "ID Number"; Integer) { }
        field(30; District; Text[20]) { }
        field(40; location; Text[20]) { }
        field(50; Relationship; text[20]) { }
        field(60; "Postal Code"; Text[40])
        {
            TableRelation = "Post Code";
        }
        field(70; "Phone Number"; text[20])
        {
            ExtendedDatatype = PhoneNo;
        }
        field(80; Email; text[40])
        {
            ExtendedDatatype = EMail;
        }

    }

    keys
    {
        key(Key1; "Application No.")
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