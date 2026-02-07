<?php
namespace Dompdf;
class Autoloader {
    public static function register() {
        spl_autoload_register(function($class) {
            // dummy autoload
        });
    }
}