table 50110 "Passport Document"
{
    DataClassification = CustomerContent;
    Caption = 'Passport Document';

    fields
    {
        field(1; "Application No."; Code[20])
        {
            Caption = 'Application No.';
            //tableRelation = "Main Application Table"."Application ID";
        }
        field(2; "Document Name"; Text[100])
        {
            Caption = 'Document Name';
        }
        field(3; "Document Media"; Media)
        {
            Caption = 'Document Media';
        }
        field(4; "File Name"; Text[250])
        {
            Caption = 'File Name';
        }
    }

    keys
    {
        // Composite key so one application can have multiple different documents
        key(PK; "Application No.", "Document Name") { Clustered = true; }
    }
}