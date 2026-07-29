table 50107 "Children table"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Application No."; Code[20])
        {
            DataClassification = ToBeClassified;
            tableRelation = "Main Application Table"."Application ID";
        }
        field(2; "Children Line Number"; Integer)
        {
            InitValue = 1;
            AutoIncrement = true;
            DataClassification = ToBeClassified;
        }
        field(10; Relationship; Option)
        {
            OptionMembers = "Legitimate child","Adopted Child";
            DataClassification = ToBeClassified;
        }

        field(20; "Full Name"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(30; "Place of Birth"; Text[30])
        {
            DataClassification = ToBeClassified;
        }
        field(40; "Date of Birth"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(50; Gender; Option)
        {
            OptionMembers = "Female","Male","Others";
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; "Application No.", "Children Line Number")
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