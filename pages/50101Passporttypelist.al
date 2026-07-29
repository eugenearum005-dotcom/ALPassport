page 50101 "Passport Type List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Passport Type Lookup Table";
    Editable = true;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Passport Code"; Rec."Passport Code")
                {
                    ApplicationArea = All;
                }
                field("Passport Page Counter"; Rec."Passport Page Counter")
                {
                    ApplicationArea = All;
                }
                field("Passport Description"; Rec."Passport Description")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
    }
}