function InitializeUploader(requiredDocs) {
    var container = document.getElementById('controlAddIn');
    container.innerHTML = ''; 

    var gallery = document.createElement('div');
    gallery.className = 'upload-gallery';

    for (var i = 0; i < requiredDocs.length; i++) {
        var docName = requiredDocs[i];

        var card = document.createElement('div');
        card.className = 'upload-card';
        card.innerHTML = `
            <div class="card-content">
                <div class="icon">⇧</div>
                <div class="title">${docName}</div>
            </div>
            <input type="file" accept="image/*,application/pdf" style="display: none;" />
        `;

        (function(dt, c) {
            var fileInput = c.querySelector('input[type="file"]');
            var contentDiv = c.querySelector('.card-content');

            c.onclick = function() { fileInput.click(); };

            fileInput.onchange = function(e) {
                var file = e.target.files[0];
                if (!file) return;

                var reader = new FileReader();
                reader.onload = function(readerEvent) {
                    var result = readerEvent.target.result;
                    var base64String = result.split(',')[1]; 

                    if (file.type.startsWith('image/')) {
                        contentDiv.innerHTML = `<img src="${result}" class="preview-img" /><div class="title">✅ ${dt}</div>`;
                    } else {
                        contentDiv.innerHTML = `<div class="icon">📄</div><div class="title">✅ ${dt}</div>`;
                    }

                    // Sends the file back to AL
                    Microsoft.Dynamics.NAV.InvokeExtensibilityMethod('DocumentUploaded', [dt, file.name, base64String]);
                };
                reader.readAsDataURL(file);
            };
        })(docName, card);

        gallery.appendChild(card);
    }
    container.appendChild(gallery);
}