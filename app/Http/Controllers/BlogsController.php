<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Blog;
use App\User;
use Storage;

class BlogsController extends Controller
{
    public function index(){
 
        $blogs = Blog::orderby('created_at','DESC')->get();

     return view('blogs.index', ['blogs' => $blogs]);
    }

    public function show($id){
        $blog = Blog::find($id);
        $user = User::where('TravelID', $id)->count('id');
        return view('blogs.show',compact('blog'), ['user'=> $user]);
    }

    public function edit($id){
        $blog = Blog::find($id);
        return view('blogs.edit', ['blog' => $blog]);
    }

    public function update(Request $request, $id){
        $blog = Blog::find($id);
        $blog->title = $request->title;
        $blog->content = $request->content;
        $blog->update();
        return redirect()->route('blogs_path', ['blog' => $blog]);
    }

    public function destroy($id){
        $blog = Blog::find($id);
        $blog->delete();
        return redirect()->route('blogs_path');
    }



    public function create(){
        return view('blogs.create');
    }

    public function store(Request $request){
        $blog = new Blog;

        $path = Storage::putFile('public', $request->file('files'));
        $url = Storage::url($path);

        $blog->image = $url;
        $blog->MaxNumberOfPeople = $request->get('MaxNum');
        $blog->StartTravel = $request->get('TravelS');
        $blog->EndTravel = $request->get('TravelE');
        $blog->title = $request->title;
        $blog->content = $request->content;

        $blog->save();
        
        return redirect()->route('blogs_path');
    }

    public function SAVE($id)
    {
        $travel = Blog::findOrFail($id);
        $user = Auth::user();

        $user['TravelID'] = $travel->id;
        $user->save();
        session()->flash('success', 'Sikeresen jelentkeztel');
        return back();
    }

    public function DIS($id)
    {
        $user = Auth::user();

        $user['TravelID'] = 0;
        $user->save();
        session()->flash('dissuccess', 'Sikeresen leiratkoztál');
        return back();
    }
 }