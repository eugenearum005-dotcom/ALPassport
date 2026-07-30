table 50101 "Main Application Table"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Application ID"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(10; "Passport owner"; option)
        {
            OptionMembers = "Choose","Your Application(Over 18)","Your Child's Application(Under 18)";
            DataClassification = ToBeClassified;
        }
        field(20; "Dual Nationality"; Option)
        {
            OptionMembers = "Yes","No";
            DataClassification = ToBeClassified;
        }
        field(21; "Country of Dual Nationality"; Text[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Country/Region";
        }
        field(22; "Previous Passport Number"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(30; "Passport Type"; Code[20])
        {
            TableRelation = "Passport Type Lookup Table"."Passport Code";
            DataClassification = ToBeClassified;
        }
        field(31; "Entitled To Dip. Passport"; Option)
        {
            OptionMembers = "President and family","Deputy President and family","Cabinet Ministers and family","Members of Parliament and family","Ambassadors and family","Other Diplomatic Missions and family";
            DataClassification = ToBeClassified;
        }
        field(32; "Application Type"; Code[100])
        {
            DataClassification = ToBeClassified;
            TableRelation =
        if ("Passport Type" = const('DIP'))
            "Passport Application Type"."Passport Application Type Code"
            else
            if ("Passport Type" = const('ORD'))
            "Passport Application Type"."Passport Application Type Code"
            where(
                    "Passport Application Type Code" = filter(
                        'FIRST TIME APPLICATION| REPLACEMENT OF PREVIOUS PASSPORT|MUTILATED PASSPORT|LOST PASSPORT'
                    )
                );
        }
        field(40; "Passport Page Count"; Code[40])
        {
            DataClassification = ToBeClassified;
            TableRelation =
        if ("Passport Type" = const('DIP'))
        "Passport Type Lookup Table"."Passport Page Counter"
        where(
                "Passport Code" = filter('DIP')
            )
            else
            "Passport Type Lookup Table"."Passport Page Counter"
        where(
                "Passport Code" = filter('ORD')
            );
        }
        field(50; "Submission Location"; Code[20])
        {
            tableRelation = "Country/Region";
            DataClassification = ToBeClassified;
        }
        field(60; "Surname"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(70; "Other Names"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(80; "Date of Birth"; Text[8])
        {
            Caption = 'Date of Birth';
            trigger OnValidate()
            begin
                ValidateDateOfBirth("Date of Birth");
            end;
        }
        field(90; "Special peculiarities"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(100; "Gender"; Option)
        {
            OptionMembers = "Male","Female","Other";
            DataClassification = ToBeClassified;
        }
        field(110; "Color of eyes"; Option)
        {
            OptionMembers = "Brown","Blue","Green","Other";
            DataClassification = ToBeClassified;
        }
        field(120; "Height in feet"; Option)
        {
            OptionMembers = "2feet","3feet","4feet","5feet","6feet","7feet","8feet";
            DataClassification = ToBeClassified;
        }
        field(130; "Height in inches"; Option)
        {
            OptionMembers = "0inches","1inches","2inches","3inches","4inches","5inches","6inches","7inches","8inches","9inches","10inches","11inches";
            DataClassification = ToBeClassified;
        }
        field(140; "Country of Birth"; Text[100])
        {
            TableRelation = "Country/Region";
            DataClassification = ToBeClassified;
        }
        field(150; "County of Birth City"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(160; "Citizen by"; Enum "Citizenship")
        {
            DataClassification = ToBeClassified;
        }
        field(170; "KRA PIN"; Text[20])
        {
            DataClassification = ToBeClassified;
        }
        field(180; "Birth Certificate Number"; Text[20])
        {
            DataClassification = ToBeClassified;
        }
        field(190; "Marital Status"; Option)
        {
            OptionMembers = "Single","Married","Divorced","Widowed";
            DataClassification = ToBeClassified;
        }
        field(200; "reason for travel"; Option)
        {
            OptionMembers = "Business","Leisure","Education","Medical";
            DataClassification = ToBeClassified;
        }
        field(210; "country of residence"; Text[100])
        {
            TableRelation = "Country/Region";
            DataClassification = ToBeClassified;
        }
        field(215; "County of residence"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(220; "Area/District of residence"; Code[10])
        {
            DataClassification = ToBeClassified;
        }
        field(230; "Postal Address"; Text[100])
        {
            DataClassification = ToBeClassified;
            tableRelation = "Post Code";
        }
        field(240; "Phone Number"; Code[20])
        {
            DataClassification = ToBeClassified;
            extendedDatatype = PhoneNo;
        }
        field(250; "Email Address"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(260; "Father's Details"; option)
        {
            OptionMembers = "Alive","Deceased";
            DataClassification = ToBeClassified;
        }
        field(261; "Father's Full Name"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(262; "Father's ID Number"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(263; "Father's Passport Number"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(264; "Father's Place of Birth"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(265; "Father's Postal Code Address"; Text[100])
        {
            DataClassification = ToBeClassified;
            tableRelation = "Post Code";
        }
        field(266; "Father's Phone Number"; Text[20])
        {
            DataClassification = ToBeClassified;
            extendedDatatype = PhoneNo;
        }
        field(270; "Mother's Details"; option)
        {
            OptionMembers = "Alive","Deceased";
            DataClassification = ToBeClassified;
        }
        field(271; "Mother's Full Name"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(272; "Mother's ID Number"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(273; "Mother's Passport Number"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(274; "Mother's Place of Birth"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(275; "Mother's Postal Code Address"; Text[100])
        {
            DataClassification = ToBeClassified;
            tableRelation = "Post Code";
        }
        field(276; "Mother's Phone Number"; Text[20])
        {
            DataClassification = ToBeClassified;
            extendedDatatype = PhoneNo;
        }

        field(300; "Any children?"; Option)
        {
            OptionMembers = "choose","yes","No";
            DataClassification = ToBeClassified;
        }

    }
    keys
    {
        key(Key1; "Application ID")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

    local procedure ValidateDateOfBirth(DateOfBirth: Text[8])
    var
        Setup: Record "Passport Application Setup";
        BirthYear: Integer;
        BirthMonth: Integer;
        BirthDay: Integer;
        AgeCalc: Integer;
    begin
        if DateOfBirth = '' then
            exit;

        if StrLen(DateOfBirth) <> 8 then
            Error('Date of Birth must be in YYYYMMDD format.');

        if not Evaluate(BirthYear, CopyStr(DateOfBirth, 1, 4)) then
            Error('Invalid year.');

        if not Evaluate(BirthMonth, CopyStr(DateOfBirth, 5, 2)) then
            Error('Invalid month.');

        if not Evaluate(BirthDay, CopyStr(DateOfBirth, 7, 2)) then
            Error('Invalid day.');

        if (BirthMonth < 1) or (BirthMonth > 12) then
            Error('Invalid month.');

        if (BirthDay < 1) or (BirthDay > 31) then
            Error('Invalid day.');


        if not Setup.Get('DEFAULT') then begin
            Setup.Init();
            Setup."Primary Key" := 'DEFAULT';
            Setup."Age" := 18;
            Setup.Insert();


            AgeCalc := Date2DMY(Today, 3) - BirthYear;

            if (BirthMonth > Date2DMY(Today, 2)) or
               ((BirthMonth = Date2DMY(Today, 2)) and (BirthDay > Date2DMY(Today, 1))) then
                AgeCalc -= 1;

            case Rec."Passport owner" of

                Rec."Passport owner"::"Your Application(Over 18)":
                    begin
                        if AgeCalc < Setup.Age then
                            Error('Applicant must be over 18 years in step 1');
                    end;

                Rec."Passport owner"::"Your Child's Application(Under 18)":
                    begin
                        if AgeCalc >= Setup.Age then
                            Error('Applicant must be under 18 years in step 1');
                    end;
            end;
        end;
    end;
}