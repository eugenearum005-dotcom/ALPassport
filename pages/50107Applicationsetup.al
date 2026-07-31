page 50107 "Passport Application Setup"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Passport Application Setup";
    Caption = 'Passport Application Setup';

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("Primary Key"; Rec."Primary Key")
                {
                    Editable = true;
                }
                //age approval
                field(" Age"; Rec.Age)
                {

                }
                field("Passport Nos."; Rec."Passport Nos.")
                {
                    ApplicationArea = All;
                }

            }
        }
    }
}