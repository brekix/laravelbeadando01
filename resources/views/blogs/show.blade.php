@extends('layouts.app')
@section('content')

<div class="row">
    <div class="col-md-12">
        <br>
        <img src="{{ asset($blog->image)}}" class="rounded mx-auto d-block" style="max-height:50%;"> <!--card-img-top, , img-fluid-->
        <br>
        <br>
        <h3> {{ $blog->title }} </h3>
        <hr>
        <p class="lead">
            {!! nl2br(e($blog->content)) !!}
        </p>
        <p class="lead">
            {{ $blog->MaxNumberOfPeople}}/{{ $user}}
        </p>
        <p class="lead">
            {{ $blog->StartTravel}}-tól
        </p>
        <p class="lead">
            {{ $blog->EndTravel}}-ig
        </p>

        @if(session()->has('success'))
              <div class="alert alert-success" role="alert">
                     {{ session()->get('success') }}
               </div>
        @elseif(session()->has('dissuccess'))
              <div class="alert alert-danger" role="alert">
                   {{ session()->get('dissuccess') }}
              </div>
        @endif
       
        @if(Auth::user() !=NULL)
            @if($blog->id != Auth::user()->TravelID)
            @if($user < $blog->MaxNumberOfPeople)
                <form method="POST" action="/SAVE/{{$blog->id}}">
                {{ csrf_field()}}
                <div class = "from-group row mb-0">
                    <div class="col-md-6">
                        <button class="btn btn-primary">
                            Apply
                        </button>
                    </div>
                </div>
            </form>
            @else
            <div class="alert alert-primary" role="alert">
                megtelt
            </div>
            @endif
            @else
            <form method="POST" action="/DIS/{{$blog->id}}">
                {{ csrf_field()}}
                <div class = "from-group row mb-0">
                    <div class="col-md-6">
                        <button class="btn btn-primary">
                            DisApply
                        </button>
                    </div>
                </div>
            </form>
            @endif
            @else
            <div class="alert alert-primary" role="alert">
                regisztrálj mert addig nem tudsz jelentkezni :P
            </div>
            @endif
            
        <!--
        <a href="{{ route('edit_blog_path', ['blog' => $blog->id])}}" class="btn btn-outline-info">Edit</a>
        <a href="{{ route('blogs_path')}}" class="btn btn-outline-secoundary">Back</a>
        <form action="{{route('delete_blog_path', ['blog'=> $blog->id] ) }}" method="POST">
            @csrf
            @method('DELETE')
            <button type="submit" class="btn btn-outline-danger">Delete</button>
        </form>
        -->
        
        <!--<a href="{{ route('delete_blog_path', ['blog' => $blog->id])}}" class="btn btn-outline-danger">Delete</a>-->
    </div>
    
</div>
@endsection