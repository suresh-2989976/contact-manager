<?php

namespace App\Http\Controllers;

use App\Models\Contact;
use Illuminate\Http\Request;
use SimpleXMLElement;

class ContactController extends Controller
{
    public function index()
    {
        $contacts = Contact::latest()->get();
        return view('contacts.index', compact('contacts'));
    }

    public function create()
    {
        return view('contacts.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'phone' => 'required|string|max:20|unique:contacts'
        ]);

        Contact::create($request->all());
        return redirect()->route('contacts.index')->with('success','Contact created successfully.');
    }

    public function show(Contact $contact)
    {
        return view('contacts.show', compact('contact'));
    }

    public function edit(Contact $contact)
    {
        return view('contacts.edit', compact('contact'));
    }

    public function update(Request $request, Contact $contact)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'phone' => 'required|string|max:20|unique:contacts,phone,'.$contact->id
        ]);

        $contact->update($request->all());
        return redirect()->route('contacts.index')->with('success','Contact updated successfully');
    }

    public function destroy(Contact $contact)
    {
        $contact->delete();
        return redirect()->route('contacts.index')->with('success','Contact deleted successfully');
    }

    // XML Import Functionality
    public function import(Request $request)
    {
        $request->validate([
            'xml_file' => 'required|file|mimes:xml'
        ]);

        $xml = simplexml_load_file($request->file('xml_file')->path());

        foreach ($xml->contact as $contact) {
            Contact::updateOrCreate(
                ['phone' => (string)$contact->phone],
                ['name' => (string)$contact->name]
            );
        }

        return back()->with('success', 'Contacts imported successfully!');
    }
}