page 50102 "Passport Application Type List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Passport Application Type";
    Editable = true;
    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Type Key"; Rec."Type Key")
                {
                    ApplicationArea = All;
                }

                field("Passport Application Type Code"; Rec."Passport Application Type Code")
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