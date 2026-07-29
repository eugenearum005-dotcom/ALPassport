page 50112 "Document"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Passport Document Setup";
    CardPageId = "Passport Document";
    Editable = true;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Document Name"; Rec."Document Name")
                {
                    ApplicationArea = All;
                }
                field("Mandatory"; Rec."Mandatory")
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