page 50106 "Passport Children"
{
    PageType = ListPart;
    SourceTable = "Children Table";

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Relationship"; Rec."Relationship") { }
                field("Full Name"; Rec."Full Name") { }
                field("Place Of Birth"; Rec."Place Of Birth") { }
                field("Date Of Birth"; Rec."Date Of Birth") { }
                field(Gender; Rec.Gender) { }
            }
        }
    }
}