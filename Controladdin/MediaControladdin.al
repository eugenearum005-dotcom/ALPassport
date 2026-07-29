controladdin "Document Uploader"
{
    RequestedHeight = 400;
    MinimumHeight = 300;
    MaximumHeight = 800;
    RequestedWidth = 700;
    MinimumWidth = 700;
    MaximumWidth = 1200;
    VerticalStretch = true;
    HorizontalStretch = true;

    Scripts = 'JS/script.js';
    StyleSheets = 'CSS/style.css';
    StartupScript = 'JS/startup.js';

    event ControlReady();
    event DocumentUploaded(DocName: Text; FileName: Text; Base64Data: Text);

    procedure InitializeUploader(RequiredDocs: JsonArray);
}