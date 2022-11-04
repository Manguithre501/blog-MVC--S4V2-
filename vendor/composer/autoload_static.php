<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInit3d8110593e4340b88e269b42628997c8
{
    public static $prefixLengthsPsr4 = array (
        'M' => 
        array (
            'Models\\' => 7,
        ),
        'H' => 
        array (
            'Helpers\\' => 8,
        ),
        'D' => 
        array (
            'Database\\' => 9,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'Models\\' => 
        array (
            0 => __DIR__ . '/../..' . '/models',
        ),
        'Helpers\\' => 
        array (
            0 => __DIR__ . '/../..' . '/Helpers',
        ),
        'Database\\' => 
        array (
            0 => __DIR__ . '/../..' . '/Database',
        ),
    );

    public static $classMap = array (
        'Composer\\InstalledVersions' => __DIR__ . '/..' . '/composer/InstalledVersions.php',
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInit3d8110593e4340b88e269b42628997c8::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInit3d8110593e4340b88e269b42628997c8::$prefixDirsPsr4;
            $loader->classMap = ComposerStaticInit3d8110593e4340b88e269b42628997c8::$classMap;

        }, null, ClassLoader::class);
    }
}