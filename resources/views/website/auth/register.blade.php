@extends('website.master')
@section('title')
    Register
@endsection
@section('body')
    <div class="row my-5">
        <div class="col-lg-6 col-12 mx-auto">
            <div class="card card-body px-lg-5 shadow-lg border-0">
                <p class=" text-center my-2">{{ session('message') }}</p>
                <form action="{{ route('customer.new.register') }}" method="post" id="regitrationForm">
                    @csrf
                    <div class="mb-3">
                        <label for="exampleInputName" class="form-label">Full Name</label>
                        <input type="text" name="name" placeholder="Enter Your Name" class="form-control"
                            id="exampleInputName" required>
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Email</label>
                        <input type="email" name="email" placeholder="Enter Your Email" class="form-control" required
                            id="email">
                        <span class=" text-danger" id="emailMessage"></span>
                    </div>

                    <div class="mb-3">
                        <label for="exampleInputMobile" class="form-label">Mobile</label>
                        <input type="number" name="mobile" placeholder="Enter Your Mobile" class="form-control"
                            id="exampleInputMobile" required>
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Password</label>
                        <input type="password" name="password" placeholder="Password" class="form-control"
                            id="password" required>
                        <span class=" text-danger" id="passwordMessage"></span>
                        <label class="mt-2"><input type="checkbox" id="passwordShow">Show Password</label>

                    </div>


                    <button type="submit" class="btn btn-success px-5" id="registrationBtn">Register</button>
                </form>

            </div>
        </div>
    </div>
@endsection
