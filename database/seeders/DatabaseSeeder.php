<?php

namespace Database\Seeders;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        for($i = 1; $i < 10; $i++) {
            DB::table('muziekschool')->insert([
                'Naam' => Str::Random(10),
                'Plaatsnaam' => Str::Random(10),
                'schoolid' =>$i
            ]);
            DB::table('componist')->insert([
                'naam' => Str::Random(10),
                'geboortedatum' => date('Y-m-d'),
                'schoolid' => $i,
            ]);
        };
        $id = 1;

    }
}
