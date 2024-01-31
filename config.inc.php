<?php
$cfg['UploadDir'] = '';
$cfg['SaveDir'] = '';
$cfg['MaxSize'] = 1024 * 1024 * 128; // Set the maximum file size in bytes (e.g., 128 MB)
// Increase the maximum allowed POST and file upload size
@ini_set('upload_max_filesize', '1000M');
@ini_set('post_max_size', '1000M');