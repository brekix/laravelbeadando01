@extends('layouts.app')

@section('content')
<form action="{{ route('store_blog_path') }}" method="POST" enctype="multipart/form-data">

    @csrf
    <div class="form-group">
        <label for="title">Title</label>
        <input type="text" name="title" class="form-control">
    </div>

    <div class="form-group">
            <label for="content">Content</label>
            <textarea name="content" rows="10" class="form-control"></textarea>
    </div>

    <div class="form-group">
        <input type="file" name="files" class="form-control">
    </div>

    <div class="form-group">
        <label for="MaxNum">MaxNumberOfPeople</label>
        <input type="text" name="MaxNum" class="form-control">
    </div>

    <div class="form-group">
        <label for="TravelStart">TravelStart</label>
        <input type="date" name="TravelS" class="form-control">
    </div>

    <div class="form-group">
        <label for="TravelEnd">TravelEnd</label>
        <input type="date" name="TravelE" class="form-control">
    </div>

    <div class="form-group">
        <button type="submit" class="btn btn-outline-primary">Add Travel</button>
    </div>
</form>
@endsection