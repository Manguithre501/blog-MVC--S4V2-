<?php

namespace Helpers;

final class Redirect
{
    static function to(string $param = '')
    {
        return header('Location:' . ROOT .  trim($param));
    }
}
