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
        'listings'  =>  Listing::latest()->filter(request(['tag', 'search']))->get()
        ]);
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

        //The form fields to be added to the database must be made "fillable".  The logic for that is in the model "Listing.php".
        Listing::create($formFields);

        return redirect('/')->with('message', 'Listing created successfully');
    }
}
