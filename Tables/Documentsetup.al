table 50100 "Passport Document Setup"
{
    DataClassification = ToBeClassified;
    Caption = 'Passport Document Setup';

    fields
    {
        field(1; "Document Name"; Text[100])
        {
            Caption = 'Document Name';
        }
        field(2; "Mandatory"; Boolean)
        {
            Caption = 'Mandatory';
        }
    }

    keys
    {
        key(PK; "Document Name") { Clustered = true; }
    }
}