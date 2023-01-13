<?php

namespace App\Http\Controllers;

use App\Models\Listing;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;

class ListingController extends Controller
{
    //Show all listings
    public function index(Request $request){
         return view('listings.index', [
        //'listings'  =>  Listing::all()

        //The other part to this function is in the "Listing" model
        //=========================================================
        //'listings'  =>  Listing::latest()->filter(request(['tag', 'search']))->get() //THIS DISPLAYS ALL FROM DATABASE
        'listings'  =>  Listing::latest()->filter(request(['tag', 'search']))->paginate(6) //THIS DISPLAYS HOWEVER MANY ARE LISTED IN "paginate()" AND PAGINATION
        //'listings'  =>  Listing::latest()->filter(request(['tag', 'search']))->simplePaginate(6) //THIS DISPLAYS HOWEVER MANY ARE LISTED AND "NEXT" AND "PREVIOUS" BUTTONS
        ]);

        /*
        In order to make the styling of the pagination package available, run "php artisan vendor:publish", find the "PaginationServiceProvider" and choose that option in the terminal (you'll be choosing a number next to it)
        */
    }

    //Show single listing
    public function show(Listing $listing){
            return view('listings.show', [
            'listing'   =>  $listing
        ]);
    }

    //Show create form
    public function create(){
        return view('listings.create');
    }

    //Store listing
    public function store(Request $request){

        /**
         * In the "filesystems.php" file, 'default' => env('FILESYSTEM_DISK', 'local') was changed to 'default' => env('FILESYSTEM_DISK', 'public'). This is used to store uploaded images into the 'public' folder.
         * Use the command 'php artisan storage:link' to make what goes into this folder accessible publicly.
         */

         //Be sure all fields being added to the database are allowed (listed as 'protected $fillable') in the associated model.  In this case
         //the 'Listing' model is handling this logic.

        $formFields = $request->validate([
            'title'         =>  'required',
            //'company'       => ['required', Rule::unique('listings', 'company')], // the "Rule" makes it have to be unique
            'company'       =>  'required',
            'location'      =>  'required',
            'website'       =>  'required',
            'email'         =>  ['required', 'email'],
            'tags'          =>  'required',
            'description'   =>  'required'
        ]);

        //Check if a logo file was included in the form submission
        if($request->hasFile('logo')) {
            $formFields['logo'] = $request->file('logo')->store('logos', 'public');
        }

        //$formFields['logo'] = 'hello';
        //array_push($formFields, $formFields['logo']);

        //The form fields to be added to the database must be made "fillable".  The logic for that is in the model "Listing.php".
        Listing::create($formFields);

        return redirect('/')->with('message', 'Listing created successfully');
    }
}
