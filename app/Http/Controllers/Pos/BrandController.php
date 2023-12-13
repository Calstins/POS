<?php

namespace App\Http\Controllers\Pos;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Brand;
use Auth;
use Illuminate\Support\Carbon;
use Image;

class BrandController extends Controller
{
    public function BrandAll(){
        $brands = Brand::latest()->get();
       return view('backend.brand.brand_all',compact('brands'));

   } // End Method


   public function BrandAdd(){
    return view('backend.brand.brand_add');
   }    // End Method


    public function BrandStore(Request $request){
        $image = $request->file('brand_image');
        $name_gen = hexdec(uniqid()).'.'.$image->getClientOriginalExtension();
        Image::make($image)->resize(100,100)->save('upload/brand/'.$name_gen);

        $save_url = 'upload/brand/'.$name_gen;
        Brand::insert([
            'name' => $request->name,
            'brand_image' => $save_url,
            'created_by' => Auth::user()->id,
            'created_at' => Carbon::now(),
        ]);
        $notification = array(
            'message' => 'Brand Inserted Successfully',
            'alert-type' => 'success'
        );
        return redirect()->route('brand.all')->with($notification);
    }       // End Method

    public function BrandEdit($id){
        $brands = Brand::findOrFail($id);
        return view('backend.brand.brand_edit',compact('brands'));
    } // End Method


    public function BrandUpdate(Request $request){

        $brand_id = $request->id;
        if ($request->file('brand_image')) {

            $image = $request->file('brand_image');
            $name_gen = hexdec(uniqid()).'.'.$image->getClientOriginalExtension(); // 343434.png
            Image::make($image)->resize(200,200)->save('upload/brand/'.$name_gen);
            $save_url = 'upload/brand/'.$name_gen;

            Brand::findOrFail($brand_id)->update([
                'name' => $request->name,
                'brand_image' => $save_url ,
                'updated_by' => Auth::user()->id,
                'updated_at' => Carbon::now(),

            ]);

            $notification = array(
                'message' => 'Brand Updated with Image Successfully',
                'alert-type' => 'success'
            );

            return redirect()->route('brand.all')->with($notification);

        } else{

            Brand::findOrFail($brand_id)->update([
            'name' => $request->name,
            'updated_by' => Auth::user()->id,
            'updated_at' => Carbon::now(),

            ]);

            $notification = array(
                'message' => 'Brand Updated without Image Successfully',
                'alert-type' => 'success'
            );

            return redirect()->route('brand.all')->with($notification);

        } // end else

    } // End Method


    public function BrandDelete($id){

        $brands = Brand::findOrFail($id);
        $img = $brands->brand_image;
        unlink($img);

        Brand::findOrFail($id)->delete();

        $notification = array(
            'message' => 'Brand Deleted Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);

    } // End Method
}
