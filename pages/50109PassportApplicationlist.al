page 50109 "Passport Application List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Main Application Table";
    CardPageId = "Passport Application Card";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Passport owner"; Rec."Passport owner")
                {

                }
                field("Dual Nationality"; Rec."Dual Nationality") { }
                field("Country of Dual Nationality"; Rec."Country of Dual Nationality") { }
                field("Previous Passport Number"; Rec."Previous Passport Number") { }
                field("Passport Type"; Rec."Passport Type") { }
                field("Entitled To Dip. Passport"; Rec."Entitled To Dip. Passport") { }
                field("Application Type"; Rec."Application Type") { }
                field("Passport Page Count"; Rec."Passport Page Count") { }
                field("Submission Location"; Rec."Submission Location") { }
                field(Surname; Rec.Surname) { }
                field("Other Names"; Rec."Other Names") { }
                field("Date of Birth"; Rec."Date of Birth") { }
                field(Gender; Rec.Gender) { }
                field("Marital Status"; Rec."Marital Status") { }
                field("Color of eyes"; Rec."Color of eyes") { }
                field("Height in feet"; Rec."Height in feet") { }
                field("Height in inches"; Rec."Height in inches") { }
                field("Special peculiarities"; Rec."Special peculiarities") { }
                field("Country of Birth"; Rec."Country of Birth") { }
                field("County of Birth City"; Rec."County of Birth City") { }
                field("Citizen by"; Rec."Citizen by") { }
                field("Birth Certificate Number"; Rec."Birth Certificate Number") { }
                field("KRA PIN"; Rec."KRA PIN") { }
                field("reason for travel"; Rec."reason for travel") { }
                field("country of residence"; Rec."country of residence") { }
                field("Area/District of residence"; Rec."Area/District of residence") { }
                field("Postal Address"; Rec."Postal Address") { }
                field("Phone Number"; Rec."Phone Number") { }
                field("Email Address"; Rec."Email Address") { }

            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {

                trigger OnAction()
                begin

                end;
            }
        }
    }
}