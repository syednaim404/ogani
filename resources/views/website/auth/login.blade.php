@extends('website.master')
@section('title')
    Register
@endsection
@section('body')
    <div class="row my-5">
        <div class="col-lg-4 col-12 mx-auto">
            <div class="card card-body px-lg-5 shadow-lg border-0">
                <form action="{{ route('customer.login.check') }}" method="post">
                    @csrf
                    <div class="mb-3">
                        <label class="form-label">Email</label>
                        <input type="email" name="email" placeholder="Enter Your Email" class="form-control" required>
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Password</label>
                        <input type="password" name="password" placeholder="Password" class="form-control">

                    </div>

                    <input type="submit" class=" form-control btn btn-success" value="Login">
                </form>
            </div>
        </div>
    </div>
@endsection
