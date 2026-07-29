table 50109 "Applicant Document"
{
    Caption = 'Applicant Document';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Application No."; Code[20])
        {
            Caption = 'Application No.';
            tableRelation = "Main Application Table"."Application ID";
        }

        // field(20; "Document Type"; Enum "Applicant Document Uploads")
        // {
        //     Caption = 'Document Type';
        // }
        field(30; Document; Media)
        {
            Caption = 'Document';
        }
        field(40; Uploaded; Boolean)
        {
            Caption = 'Uploaded';
            Editable = false;
        }
        field(50; "File Name"; Text[250])
        {
            Caption = 'File Name';
            Editable = false;
        }
        field(60; "Upload Date"; DateTime)
        {
            Caption = 'Upload Date';
            Editable = false;
        }
    }

    keys
    {
        key(PK; "Application No.")
        {
            Clustered = true;
        }
    }
}