// page 50111 "Applicant Document Subpage"
// {
//     PageType = ListPart;
//     SourceTable = "Applicant Document";
//     Caption = 'Required Documents';
//     InsertAllowed = false;
//     DeleteAllowed = false; // Prevents users from deleting the required rows

//     layout
//     {
//         area(content)
//         {
//             repeater(Group)
//             {
//                 field("Document"; Rec.Document)
//                 {
//                     ApplicationArea = All;
//                     ToolTip = 'The uploaded document file.';
//                 }
//                 // field("Document Type"; Rec."Document Type")
//                 // {
//                 //     ApplicationArea = All;
//                 //     ToolTip = 'The required document type.';
//                 // }
//                 field(Uploaded; Rec.Uploaded)
//                 {
//                     ApplicationArea = All;
//                     ToolTip = 'Indicates if the file has been uploaded.';
//                 }
//                 field("File Name"; Rec."File Name")
//                 {
//                     ApplicationArea = All;
//                     ToolTip = 'The name of the uploaded file.';
//                 }

//             }
//         }
//     }

//     actions
//     {
//         area(processing)
//         {
//             action(UploadAction)
//             {
//                 ApplicationArea = All;
//                 Caption = 'Upload';
//                 Image = Import;
//                 Scope = Repeater;
//                 ToolTip = 'Upload the required document.';

//                 trigger OnAction()
//                 var
//                     InStr: InStream;
//                     FileName: Text;
//                 begin
//                     // SaaS-safe upload method
//                     if UploadIntoStream('Select Document', '', 'All Files (*.*)|*.*', FileName, InStr) then begin
//                         Rec.Document.ImportStream(InStr, FileName);
//                         Rec.Uploaded := true;
//                         Rec."File Name" := CopyStr(FileName, 1, MaxStrLen(Rec."File Name"));
//                         Rec."File Name" := FileName;
//                         Rec."Upload Date" := CurrentDateTime;
//                         Rec.Modify(true);
//                         Message('Document uploaded successfully.');
//                     end;
//                 end;
//             }
//             action(DownloadAction)
//             {
//                 ApplicationArea = All;
//                 Caption = 'View / Download';
//                 Image = Download;
//                 Scope = Repeater;
//                 Enabled = Rec.Uploaded;
//                 ToolTip = 'Download the uploaded document.';

//                 trigger OnAction()
//                 var
//                     OutStr: OutStream;
//                     InStr: InStream;
//                     TempBlob: Codeunit "Temp Blob";
//                     FileName: Text;
//                 begin
//                     if not Rec.Document.HasValue then
//                         exit;

//                     // Export Media to TempBlob, then stream to user
//                     TempBlob.CreateOutStream(OutStr);
//                     Rec.Document.ExportStream(OutStr);
//                     TempBlob.CreateInStream(InStr);

//                     FileName := Rec."File Name";
//                     if FileName = '' then
//                         FileName := 'Document.pdf';

//                     DownloadFromStream(InStr, 'Download Document', '', 'All Files (*.*)|*.*', FileName);
//                 end;
//             }
//             action(DeleteAction)
//             {
//                 ApplicationArea = All;
//                 Caption = 'Clear Document';
//                 Image = Delete;
//                 Scope = Repeater;
//                 Enabled = Rec.Uploaded;
//                 ToolTip = 'Remove the uploaded document.';

//                 trigger OnAction()
//                 begin
//                     if Confirm('Are you sure you want to remove this document?', false) then begin
//                         Clear(Rec.Document);
//                         Rec.Uploaded := false;
//                         Rec."File Name" := '';
//                         Rec."Upload Date" := 0DT;
//                         Rec.Modify(true);
//                     end;
//                 end;
//             }
//         }
//     }
// }