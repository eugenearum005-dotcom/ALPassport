codeunit 50120 "Passport No. Series"
{
    procedure GetNextPassportNo(): Code[20]
    var
        Setup: Record "Passport Application Setup";
        NoSeries: Codeunit "No. Series";
    begin
        Setup.Get('DEFAULT');
        exit(NoSeries.GetNextNo(Setup."Passport Nos."));
    end;
}