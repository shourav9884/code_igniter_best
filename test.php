<?php

    echo 'DOC_ROOT = '.$_SERVER['DOCUMENT_ROOT'] .'<br/>';
    echo 'SERVER_NAME = '.$_SERVER['SERVER_NAME'].'<br/>';
    echo  str_replace("//", "/", dirname($_SERVER['PHP_SELF']));
?>
