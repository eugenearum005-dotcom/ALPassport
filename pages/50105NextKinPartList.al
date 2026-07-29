page 50105 "Next Kin"
{
    PageType = ListPart;
    SourceTable = "Next of Kin table";

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Full Name"; Rec."Full Name") { }
                field("ID Number"; Rec."ID Number") { }
                field(Relationship; Rec.Relationship) { }
                field(District; Rec.District) { }
                field(Location; Rec.Location) { }
                field("Postal Code"; Rec."Postal Code") { }
                field("Phone Number"; Rec."Phone Number") { }
                field(Email; Rec.Email) { }
            }
        }
    }
}