@extends('layouts.app')

@section('content')
<div class="row">
    @foreach($blogs as $blog)
    <div class="col-md-6">
    <br>
    <br>
        <div class="card">
            <div class="card-header">
                <a href="{{route('blog_path', ['blog' => $blog->id])}}">{{ $blog->title }}</a>
            </div>
            <div class="card-body">
            <a href="{{ route('blog_path', ['blog' => $blog->id])}}">
                <img src="{{asset($blog->image)}}" alt="" class="card-img-top">
            </a>
            
                {{ $blog->content}}
                <p class="lead">
                    posted
                    <!--      mikor keletkezett pontos dátum -> leszedve h 1 perce nem időpont-->
                    {{ $blog->created_at -> diffForHumans()}}
                    <br>
                    <a href="{{ route('blog_path', ['blog' => $blog->id])}}" class="btn btn-outline-primary">View Travel</a>
                    <!-- <button class="btn btn-outline-primary">View Post</button>-->
                </p>
            </div>
        </div>      
    </div>
    @endforeach
</div>

@endsection