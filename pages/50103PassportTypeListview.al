page 50103 "Passport Type view list"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Passport Type Lookup Table";
    CardPageId = "Passport Type List";
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

    var
        myInt: Integer;
}