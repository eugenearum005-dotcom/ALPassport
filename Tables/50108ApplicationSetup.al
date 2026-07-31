table 50108 "Passport Application Setup"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Primary Key"; Code[20])
        {
            DataClassification = ToBeClassified;
        }

        field(2; Age; Integer)
        {
            Caption = 'Minimum Adult Age';
        }
        field(3; "Passport Nos."; Code[20])
        {
            Caption = 'Passport Nos.';
            TableRelation = "No. Series";
        }
    }

    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }
}