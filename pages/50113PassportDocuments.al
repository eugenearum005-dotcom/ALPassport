page 50113 "Passport Document"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Passport Document Setup";
    Editable = false;

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
    }
}