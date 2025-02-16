@extends('layouts.app')

@section('content')
<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card">
                <div class="card-header bg-primary text-white text-center">
                    <h5 class="mb-0">Login Form</h5>
                </div>
                <div class="card-body">
                    <form action="{{ route('login') }}" method="POST">
                        @csrf
                        
                        <div class="mb-3">
                            <label for="email" class="form-label">User Email</label>
                            <input type="text" 
                                   class="form-control @error('email') is-invalid @enderror" 
                                   id="email" 
                                   name="email" 
                                   value="{{ old('email') }}"
                                   placeholder="admin@gmail.com"
                                   required>
                            @error('email')
                                <div class="invalid-feedback">{{ $message }}</div>
                            @enderror
                        </div>

                        <div class="mb-3">
                            <label for="password" class="form-label">Password</label>
                            <input type="tel" 
                                   class="form-control @error('password') is-invalid @enderror" 
                                   id="password" 
                                   name="password" 
                                   value="{{ old('password') }}"
                                   placeholder="*************"
                                   required>
                            @error('password')
                                <div class="invalid-feedback">{{ $message }}</div>
                            @enderror
                          
                        </div>

                        <div class="d-grid gap-2">
                            <button type="submit" class="btn btn-primary">Sign in</button>
                            <!-- <a href="{{ url('/') }}" class="btn btn-secondary">Cancel</a> -->
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection