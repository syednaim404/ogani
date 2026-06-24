@extends('admin.master')
@section('title')
    Manage Contact
@endsection
@section('body')

    <!-- PAGE-HEADER -->
    <div class="page-header">
        <div>
            <h1 class="page-title">Contact Module</h1>
        </div>
        <div class="ms-auto pageheader-btn">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="#">Contact</a></li>
                <li class="breadcrumb-item active" aria-current="page">Manage Contact</li>
            </ol>
        </div>
    </div>

    <!-- body -->
    <div class="row row-sm">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-header border-bottom">
                    <h3 class="card-title">Contact Detail</h3>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered text-nowrap border-bottom" id="basic-datatable">
                            <thead>
                                <tr>
                                    <th class="wd-15p border-bottom-0">#</th>
                                    <th class="wd-15p border-bottom-0">Email</th>
                                    <th class="wd-15p border-bottom-0">Mobile</th>
                                    <th class="wd-15p border-bottom-0">Open Time</th>
                                    <th class="wd-15p border-bottom-0">Map Link</th>
                                    <th class="wd-20p border-bottom-0">Address</th>
                                    <th class="wd-10p border-bottom-0">Status</th>
                                    <th class="wd-25p border-bottom-0">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($contacts as $contact)
                                    <tr>
                                        <td>{{ $loop->iteration }}</td>
                                        
                                                <td>{{ $contact->email }}</td>
                                                <td>{{ $contact->mobile }}</td>
                                                <td>{{ $contact->open_time }}</td>
                                                <td>{{substr($contact->map_link, 0, 20)}}</td>
                                                <td>{{ $contact->address }}</td>
                                        <td>{{ $contact->status == 1 ? 'Published' : 'Unpublished' }}</td>
                                        <td>
                                            <div class="d-flex gap-1">
                                                 <a href="{{ route('contact.edit', $contact->id) }}" class="btn btn-primary">
                                                <i class="fa-solid fa-pen-to-square"></i>
                                                 </a>
                                                <form action="{{ route('contact.destroy', $contact->id) }}" method="post">
                                                    @csrf
                                                    @method('DELETE')
                                                    <button type="submit" class="btn btn-danger" onclick="return confirm('Are You Sure? You Wont to Delete!')">
                                                        <i class="fa-solid fa-trash-can"></i>
                                                    </button>
                                                </form>
                                            </div>
                                           
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Row -->
@endsection
