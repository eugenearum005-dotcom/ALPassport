// codeunit 50101 "Applicant Document Mgt."
// {
//     procedure InitializeDocuments(AppNo: Code[20])
//     var
//         ApplicantDoc: Record "Applicant Document";
//         DocType: Enum "Applicant Document Uploads";
//         OrdinalList: List of [Integer];
//         i: Integer;
//     begin
//         if AppNo = '' then
//             exit;

//         OrdinalList := Enum::"Applicant Document Uploads".Ordinals();
//         foreach i in OrdinalList do begin
//             DocType := Enum::"Applicant Document Uploads".FromInteger(i);

//             if not ApplicantDoc.Get(AppNo, DocType) then begin
//                 ApplicantDoc.Init();
//                 ApplicantDoc."Application No." := AppNo;
//                 ApplicantDoc."Document Type" := DocType;
//                 ApplicantDoc.Insert();
//             end;
//         end;
//     end;

//     procedure VerifyAllDocumentsUploaded(AppNo: Code[20])
//     var
//         ApplicantDoc: Record "Applicant Document";
//     begin
//         ApplicantDoc.SetRange("Application No.", AppNo);
//         ApplicantDoc.SetRange(Uploaded, false);

//         if not ApplicantDoc.IsEmpty then
//             Error('You must upload all required documents before submitting the application.');
//     end;
// }