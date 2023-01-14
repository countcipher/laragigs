<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Listing extends Model
{
    use HasFactory;

    //Here is where the data added to the database is made fillable (it can be mass added to the dbase)
    protected $fillable = ['title', 'company', 'location', 'website', 'email', 'tags', 'description', 'logo', 'user_id'];

    public function scopeFilter($query, array $filters){
        if($filters['tag'] ?? false){
            $query->where('tags', 'like', '%' . request('tag') . '%');
        }

        //Creates the search system
        //================================
        if($filters['search'] ?? false){
            $query->where('title', 'like', '%' . request('search') . '%')
            ->orWhere('description', 'like', '%' . request('search') . '%')
            ->orWhere('tags', 'like', '%' . request('search') . '%');
        }
    }

    // Relationshp to user ... be sure to name it the same as the table ... must be paired with the relationship built in "User.php"
    public function user(){
        return $this->belongsTo(User::class, 'user_id');
    }
}
