@extends('layouts.app')

@section('content')
<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card">
                <div class="card-header bg-info text-white">
                    <h5 class="mb-0">Contact Details</h5>
                </div>
                <div class="card-body">
                    <dl class="row">
                        <dt class="col-sm-3">Name:</dt>
                        <dd class="col-sm-9">{{ $contact->name }}</dd>

                        <dt class="col-sm-3">Phone:</dt>
                        <dd class="col-sm-9">{{ $contact->phone }}</dd>

                        <dt class="col-sm-3">Created At:</dt>
                        <dd class="col-sm-9">{{ $contact->created_at->setTimezone('Asia/Kolkata')->format('d M Y H:i') }}</dd>

                        <dt class="col-sm-3">Last Updated:</dt>
                        <dd class="col-sm-9">{{ $contact->updated_at->setTimezone('Asia/Kolkata')->format('d M Y H:i') }}
                        </dd>
                    </dl>
                    
                    <div class="mt-4">
                        <a href="{{ route('contacts.edit', $contact->id) }}" class="btn btn-warning">Edit</a>
                        <form action="{{ route('contacts.destroy', $contact->id) }}" method="POST" class="d-inline">
                            @csrf
                            @method('DELETE')
                            <button type="submit" class="btn btn-danger" onclick="return confirm('Are you sure?')">Delete</button>
                        </form>
                        <a href="{{ route('contacts.index') }}" class="btn btn-secondary float-end">Back to List</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection