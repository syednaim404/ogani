<?php

namespace App\Http\Controllers;

use App\Models\Contact;
use Illuminate\Http\Request;

class ContactController extends Controller
{

    public function index()
    {
        return view('admin.contact.index', ['contacts' => Contact::all()]);
    }


    public function create()
    {
        return view('admin.contact.create');
    }


    public function store(Request $request)
    {
        Contact::storeData($request);
        flash()->success('Contact Create Succesfully!');
        return back();
    }


    public function show(Contact $contact)
    {
        //
    }


    public function edit(Contact $contact)
    {
        return view('admin.contact.edit', ['contact' => $contact]);
    }


    public function update(Request $request, Contact $contact)
    {
        Contact::updateData($request, $contact->id);
        flash()->success('Contact Update Succesfully!');
        return redirect()->route('contact.index');
    }


    public function destroy(Contact $contact)
    {
        Contact::deleteData($contact->id);
        flash()->warning('Contact Delete Succesfully!');
        return back();
    }
}
