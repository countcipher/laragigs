<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use App\Models\User;
use App\Models\Listing;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
         //\App\Models\User::factory(10)->create();


         /**
          * This will create a single user in the dbase
          */
            $user = User::factory()->create([
                'name'  =>  'John Doe',
                'email' =>  'john@gmail.com'
            ]);

         //\App\Models\Listing::factory(15)->create(); //This will create 15 listings
         /**
          * For each of the 6 faked listings, the 'user_id' column will be filled wih
          * the user id of the single user created above
          */
         Listing::factory(6)->create([
            'user_id'   =>  $user->id
         ]);

        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);
    }
}
