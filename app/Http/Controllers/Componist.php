<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class Componist extends Controller
{
    public function index()
    {
        $users = DB::select('select * from componist INNER JOIN  muziekschool ON componist.schoolid = muziekschool.schoolid');
        return view('hi', ['componisten' => $users]);
    }
}
