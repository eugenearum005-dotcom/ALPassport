page 50110 "Passport Application Card"
{
    Caption = 'Passport Application';
    PageType = Card;
    SourceTable = "Main Application Table";
    ApplicationArea = All;
    UsageCategory = Documents;

    layout
    {
        area(Content)
        {

            group(WizardHeader)
            {
                ShowCaption = false;

                field(StepIndicatorLbl; StepIndicatorText)
                {
                    ApplicationArea = All;
                    ShowCaption = false;
                    Editable = false;
                    Style = Strong;
                    StyleExpr = true;
                }
            }

            //  STEP 1  Who is this application for? 
            group(Step1ApplicantType)
            {
                Caption = 'Step 1 · Applicant';
                Visible = Step1Visible;

                field("Passport owner"; Rec."Passport owner")
                {
                    ApplicationArea = All;
                    ShowCaption = false;
                    Importance = Promoted;

                    trigger OnValidate()
                    begin

                        GoToStep(2);
                    end;
                }
            }

            //  STEP 2  Rules, fees, terms 
            group(Step2Terms)
            {
                Caption = 'Step 2 · Passport Rules & Fees';
                Visible = Step2Visible;

                field(TermsInfoDisplay; TermsInfoText)
                {
                    ApplicationArea = All;
                    ShowCaption = false;
                    Editable = false;
                    MultiLine = true;
                }
                field(TermsAccepted; TermsAccepted)
                {
                    ApplicationArea = All;
                    Caption = 'I have read and accept the above rules and fee schedule';
                }
            }

            //  STEP 3  Dual nationality 
            group(Step3DualNationality)
            {
                Caption = 'Step 3 · Dual Nationality';
                Visible = Step3Visible;

                field("Dual Nationality"; Rec."Dual Nationality")
                {
                    ApplicationArea = All;
                }
                group(DualNationalityDetails)
                {
                    ShowCaption = false;
                    Visible = Rec."Dual Nationality" = Rec."Dual Nationality"::Yes;

                    field("Country of Dual Nationality"; Rec."Country of Dual Nationality")
                    {
                        ApplicationArea = All;
                    }
                    field("Previous Passport Number"; Rec."Previous Passport Number")
                    {
                        ApplicationArea = All;
                        Caption = 'Other Passport Number';
                    }
                }
            }

            // STEP 4 Passport type 
            group(Step4PassportType)
            {
                Caption = 'Step 4 · Passport Details';
                Visible = Step4Visible;

                field("Passport Type"; Rec."Passport Type")
                {
                    ApplicationArea = All;
                }
                group(DiplomaticOnly)
                {
                    ShowCaption = false;
                    Visible = Rec."Passport Type" = 'DIP';

                    field("Entitled To Dip. Passport"; Rec."Entitled To Dip. Passport")
                    {
                        ApplicationArea = All;
                    }
                }
                field("Application Type"; Rec."Application Type")
                {
                    ApplicationArea = All;
                }
                field("Passport Page Count"; Rec."Passport Page Count")
                {
                    ApplicationArea = All;
                }
            }

            //  STEP 5 · Personal details, split into logical subgroups 
            group(Step5PersonalDetails)
            {
                Caption = 'Step 5 · Personal Details';
                Visible = Step5Visible;
                field("Submission Location"; Rec."Submission Location")
                {
                    ApplicationArea = All;
                }

                group(Identity)
                {
                    Caption = 'Identity';
                    field(Surname; Rec.Surname) { ApplicationArea = All; }
                    field("Other Names"; Rec."Other Names") { ApplicationArea = All; }
                    field("Date of Birth"; Rec."Date of Birth") { ApplicationArea = All; }
                    field(Gender; Rec.Gender) { ApplicationArea = All; }
                    field("Marital Status"; Rec."Marital Status") { ApplicationArea = All; }
                }
                group(PhysicalDescription)
                {
                    Caption = 'Physical Description';
                    field("Color of eyes"; Rec."Color of eyes") { ApplicationArea = All; }
                    field("Height in feet"; Rec."Height in feet") { ApplicationArea = All; }
                    field("Height in inches"; Rec."Height in inches") { ApplicationArea = All; }
                    field("Special peculiarities"; Rec."Special peculiarities") { ApplicationArea = All; }
                }
                group(BirthAndCitizenship)
                {
                    Caption = 'Birth & Citizenship';
                    field("Country of Birth"; Rec."Country of Birth") { ApplicationArea = All; }
                    field("County of Birth City"; Rec."County of Birth City") { ApplicationArea = All; }
                    field("Citizen by"; Rec."Citizen by") { ApplicationArea = All; }
                    field("Birth Certificate Number"; Rec."Birth Certificate Number") { ApplicationArea = All; }
                    field("KRA PIN"; Rec."KRA PIN") { ApplicationArea = All; }
                }
                group(ResidenceAndContact)
                {
                    Caption = 'Residence, Travel & Contact';
                    field("reason for travel"; Rec."reason for travel") { ApplicationArea = All; }
                    field("country of residence"; Rec."country of residence") { ApplicationArea = All; }
                    field("County of residence"; Rec."County of residence") { ApplicationArea = All; }
                    field("Area/District of residence"; Rec."Area/District of residence") { ApplicationArea = All; }
                    field("Postal Address"; Rec."Postal Address") { ApplicationArea = All; }
                    field("Phone Number"; Rec."Phone Number") { ApplicationArea = All; }
                    field("Email Address"; Rec."Email Address") { ApplicationArea = All; }
                }
            }

            // STEP 6 · Next of kin (max 2, enforced in the table) 
            group(Step6NextOfKin)
            {
                Caption = 'Step 6 · Next of Kin (up to 2)';
                Visible = Step6Visible;

                part(NextOfKinSubform; "Next Kin")
                {
                    ApplicationArea = All;
                    SubPageLink = "Application No." = field("Application ID");
                    UpdatePropagation = Both;
                }
            }

            //  STEP 7 · Parents
            group(Step7Parents)
            {
                Caption = 'Step 7 · Parents';
                Visible = Step7Visible;

                field("Father''s Details"; rec."Father's Details")
                {
                    ApplicationArea = All;
                    Caption = 'Provide father''s details?';
                }
                group(FatherDetails)
                {
                    Caption = 'Father''s Details';
                    Visible = Rec."Father's Details" = Rec."Father's Details"::Alive;

                    field("Father's Full Name"; Rec."Father's Full Name") { ApplicationArea = All; }
                    field("Father's ID Number"; Rec."Father's ID Number") { ApplicationArea = All; }
                    field("Father's Passport Number"; Rec."Father's Passport Number") { ApplicationArea = All; }
                    field("Father's Place of Birth"; Rec."Father's Place of Birth") { ApplicationArea = All; }
                    field("Father's Postal Code Address"; Rec."Father's Postal Code Address") { ApplicationArea = All; }
                    field("Father's Phone Number"; Rec."Father's Phone Number") { ApplicationArea = All; }
                }

                field("Mother''s Details"; rec."Mother's Details")
                {
                    ApplicationArea = All;
                    Caption = 'Provide mother''s details?';
                }
                group(MotherDetails)
                {
                    Caption = 'Mother''s Details';
                    Visible = rec."Mother's Details" = rec."Mother's Details"::Alive;

                    field("Mother's Full Name"; Rec."Mother's Full Name") { ApplicationArea = All; }
                    field("Mother's ID Number"; Rec."Mother's ID Number") { ApplicationArea = All; }
                    field("Mother's Passport Number"; Rec."Mother's Passport Number") { ApplicationArea = All; }
                    field("Mother's Place of Birth"; Rec."Mother's Place of Birth") { ApplicationArea = All; }
                    field("Mother's Postal Code Address"; Rec."Mother's Postal Code Address") { ApplicationArea = All; }
                    field("Mother's Phone Number"; Rec."Mother's Phone Number") { ApplicationArea = All; }
                }
            }

            // STEP 8 · Children, only if applicable 
            group(Step8Children)
            {
                Caption = 'Step 8 · Children';
                Visible = Step8Visible;

                field("Any children?"; Rec."Any children?")
                {
                    ApplicationArea = All;
                }
                group(ChildrenDetails)
                {
                    ShowCaption = false;
                    Visible = Rec."Any children?" = Rec."Any children?"::yes;

                    part(ChildrenSubform; "Passport Children")
                    {
                        ApplicationArea = All;
                        SubPageLink = "Application No." = field("Application ID");
                        UpdatePropagation = Both;
                    }
                }
            }

            // STEP 9 · Document uploads (full step) 
            group(Step9Documents)
            {

                Caption = 'Step 9 · Document Uploads';
                Visible = Step9Visible;

                usercontrol(DocUploader; "Document Uploader")
                {

                    ApplicationArea = All;
                    // Triggered when JS sends the 'ControlReady' signal
                    trigger ControlReady()
                    var
                        DocTypes: JsonArray;
                    begin
                        // Build the list of 7 boxes we want to draw
                        DocTypes.Add('Passport Photo');
                        DocTypes.Add('National ID Front');
                        DocTypes.Add('National ID Back');
                        DocTypes.Add('Birth Certificate');
                        DocTypes.Add('Marriage Certificate');
                        DocTypes.Add('Father''s Death Certificate');
                        DocTypes.Add('Mother''s Death Certificate');

                        // Send the list to JavaScript to render the boxes
                        CurrPage.DocUploader.InitializeUploader(DocTypes);
                    end;

                    // Triggered every time a user picks a file in one of the boxes
                    trigger DocumentUploaded(DocType: Text; FileName: Text; Base64Data: Text)
                    var
                        PassportDoc: Record "Passport Document";
                        Base64Convert: Codeunit "Base64 Convert";
                        TempBlob: Codeunit "Temp Blob";
                        OutStr: OutStream;
                        InStr: InStream;
                    begin
                        // 1. Find or create the document record in your sub-table
                        if not PassportDoc.Get(Rec."Application ID", DocType) then begin
                            PassportDoc.Init();
                            PassportDoc."Application No." := Rec."Application ID";
                            PassportDoc."Document Name" := CopyStr(DocType, 1, MaxStrLen(PassportDoc."Document Name"));
                            PassportDoc.Insert(true);
                        end;

                        // 2. Decode the Base64 text back into binary file data using TempBlob
                        TempBlob.CreateOutStream(OutStr);
                        Base64Convert.FromBase64(Base64Data, OutStr);

                        // 3. Save the binary data from the TempBlob directly into the Media field
                        TempBlob.CreateInStream(InStr);
                        PassportDoc."Document Media".ImportStream(InStr, FileName);
                        PassportDoc.Modify(true);
                    end;
                }
            }
        }
    }


    actions
    {
        area(Processing)
        {
            action(Back)
            {
                ApplicationArea = All;
                Caption = '<< Back';
                Image = PreviousRecord;
                InFooterBar = true;
                Enabled = CurrentStep > 1;

                trigger OnAction()
                begin
                    GoToStep(CurrentStep - 1);
                end;
            }
            action(Next)
            {
                ApplicationArea = All;
                Caption = 'Next >>';
                Image = NextRecord;
                InFooterBar = true;
                Enabled = CurrentStep < TotalSteps;

                trigger OnAction()
                begin
                    if not ValidateCurrentStep() then
                        exit;
                    GoToStep(CurrentStep + 1);
                end;
            }
            // action(FinishAction)
            // {
            //     ApplicationArea = All;
            //     Caption = 'Finish';
            //     Image = Approve;
            //     InFooterBar = true;

            //     trigger OnAction()
            //     var
            //         DocMgt: Codeunit "Applicant Document Mgt.";
            //     begin
            //         // Validate documents before allowing completion
            //         DocMgt.VerifyAllDocumentsUploaded(Rec."Application ID");

            //         Message('Application submitted successfully!');
            //         CurrPage.Close();
            //     end;
            // }
        }
    }

    var
        CurrentStep: Integer;
        TotalSteps: Integer;
        Step1Visible: Boolean;
        Step2Visible: Boolean;
        Step3Visible: Boolean;
        Step4Visible: Boolean;
        Step5Visible: Boolean;
        Step6Visible: Boolean;
        Step7Visible: Boolean;
        Step8Visible: Boolean;
        Step9Visible: Boolean;
        TermsAccepted: Boolean;
        TermsInfoText: Text;
        StepIndicatorText: Text[100];

    local procedure GoToStep(NewStep: Integer)
    begin
        TotalSteps := 9;
        if NewStep < 1 then
            NewStep := 1;
        if NewStep > TotalSteps then
            NewStep := TotalSteps;
        CurrentStep := NewStep;
        UpdateWizardVisibility();
    end;

    local procedure UpdateWizardVisibility()
    begin
        Step1Visible := CurrentStep = 1;
        Step2Visible := CurrentStep = 2;
        Step3Visible := CurrentStep = 3;
        Step4Visible := CurrentStep = 4;
        Step5Visible := CurrentStep = 5;
        Step6Visible := CurrentStep = 6;
        Step7Visible := CurrentStep = 7;
        Step8Visible := CurrentStep = 8;
        Step9Visible := CurrentStep = 9;
        StepIndicatorText := StrSubstNo('Step %1 of 9 — %2', CurrentStep, GetStepCaption(CurrentStep));
        CurrPage.Update(false);
    end;

    local procedure GetStepCaption(Step: Integer): Text[50]
    begin
        case Step of
            1:
                exit('Applicant');
            2:
                exit('Rules & Fees');
            3:
                exit('Dual Nationality');
            4:
                exit('Passport Details');
            5:
                exit('Personal Details');
            6:
                exit('Next of Kin');
            7:
                exit('Parents');
            8:
                exit('Children');
            9:
                exit('Document Uploads');
        end;
    end;

    local procedure ValidateCurrentStep(): Boolean
    begin
        case CurrentStep of
            2:
                if not TermsAccepted then begin
                    Message('Please accept the rules and fee schedule before continuing.');
                    exit(false);
                end;
            3:
                if (Rec."Dual Nationality" = Rec."Dual Nationality"::Yes) and (Rec."Country of Dual Nationality" = '') then begin
                    Message('Please provide if of dual nationality or not.');
                    exit(false);
                end;
        end;
        exit(true);
    end;

    trigger OnOpenPage()
    var
    //  DocMgt: Codeunit "Applicant Document Mgt.";
    begin
        // Ensure rows exist as soon as the user opens the wizard
        //  if Rec."Application ID" <> '' then
        //  DocMgt.InitializeDocuments(Rec."Application ID");

        TermsInfoText :=
            'SAMPLE TEXT — replace with the current Kenyan Directorate of Immigration ' +
            'rules and fee schedule (e.g. ordinary 32/48-page passport fees, EAC passport ' +
            'fees, diplomatic/official passport eligibility, and processing times) before go-live.';
        CurrentStep := 1;
        UpdateWizardVisibility();
    end;
}


