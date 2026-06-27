@extends('website.master')
@section('title')
    Register
@endsection
@section('body')
    <div class="row my-5">
        <div class="col-lg-6 col-12 mx-auto">
            <div class="card card-body px-lg-5 shadow-lg border-0">
                <p class=" text-center my-2">{{session('message')}}</p>
                <form action="{{route('customer.new.register')}}" method="post">
                    @csrf
                    <div class="mb-3">
                        <label for="exampleInputName" class="form-label">Full Name</label>
                        <input type="text" name="name" placeholder="Enter Your Name" class="form-control"
                            id="exampleInputName" required>
                    </div>

                    <div class="mb-3">
                        <label for="exampleInputEmail" class="form-label">Email</label>
                        <input type="email" name="email" placeholder="Enter Your Email" class="form-control"
                            id="exampleInputEmail" required>
                    </div>

                    <div class="mb-3">
                        <label for="exampleInputMobile" class="form-label">Mobile</label>
                        <input type="number" name="mobile" placeholder="Enter Your Mobile" class="form-control"
                            id="exampleInputMobile" required>
                    </div>

                    <div class="mb-3">
                        <label for="exampleInputPassword" class="form-label">Password</label>
                        <input type="password" name="password" placeholder="Password" class="form-control" id="exampleInputPassword" required>
                   
                    </div>


                    <button type="submit" class="btn btn-success px-5">Register</button>
                </form>

            </div>
        </div>
    </div>
@endsection
