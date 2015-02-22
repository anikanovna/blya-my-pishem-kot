<?php
use dosamigos\fileupload\FileUpload;
?>

<?= FileUpload::widget([
    //'model' => $model,
    'name' => 'testtest',
    'attribute' => 'image',
    'url' => ['page/upload-images', 'pageId' => $objectPage->pages_id], // your url, this is just for demo purposes,
    'options' => ['accept' => 'image/*'],
    'clientOptions' => [
        'maxFileSize' => 2000000
    ],
    // Also, you can specify jQuery-File-Upload events
    // see: https://github.com/blueimp/jQuery-File-Upload/wiki/Options#processing-callback-options
    'clientEvents' => [
        'fileuploaddone' => 'function(e, data) {
                                console.log(e);
                                console.log(data);
                            }',
        'fileuploadfail' => 'function(e, data) {
                                console.log(e);
                                console.log(data);
                            }',
    ],
]);?>