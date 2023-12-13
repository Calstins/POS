<?php

namespace App\Http\Controllers\Pos;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\Category;
use App\Models\Supplier;
use App\Models\Unit;
use App\Models\Brand;
use Auth;
use Illuminate\Support\Carbon;
use Image;

class ProductController extends Controller
{
    public function ProductAll(){

        $products = Product::latest()->get();
        return view('backend.product.product_all',compact('products'));

    }// end

    public function ProductAdd(){
        $supplier = Supplier::all();
        $category = Category::all();
        $unit = Unit::all();
        $brand = Brand::all();
        return view('backend.product.product_add', compact('supplier','category','unit','brand'));
    } // End Method

    public function ProductStore(Request $request){

        $image = $request->file('product_image');
        $name_generate =hexdec(uniqid()).'.'.$image->getClientOriginalExtension();
        Image::make($image)->resize(500,500)->save('upload/product/'.$name_generate );
        $save_url ='upload/product/'.$name_generate;

        Product::insert([
            'name' => $request->name,
            'weight' => $request->weight,
            'product_image'=> $save_url,
            'supplier_id'=>$request->supplier_id,
            'unit_id'=>$request->unit_id,
            'category_id'=>$request->category_id,
            'brand_id'=>$request->brand_id,
            'created_by' => Auth::user()->id,
            'created_at' => Carbon::now(),

        ]);

         $notification = array(
            'message' => 'Product Inserted Successfully',
            'alert-type' => 'success'
        );

        return redirect()->route('product.all')->with($notification);

    } // End Method


    // EDIT
    public function ProductEdit($id){
        $supplier = Supplier::all();
        $category = Category::all();
        $unit = Unit::all();
        $brand = Brand::all();
        $product = Product::findOrFail($id);

        return view('backend.product.product_edit', compact('product','supplier','category','unit','brand'));
    }// End Method


    public function ProductUpdate(Request $request){

        $product_id = $request->id;
        if ($request->file('product_image')) {

            $image = $request->file('product_image');
            $name_gen = hexdec(uniqid()).'.'.$image->getClientOriginalExtension(); // 343434.png
            Image::make($image)->resize(200,200)->save('upload/product/'.$name_gen);
            $save_url = 'upload/product/'.$name_gen;

            product::findOrFail($product_id)->update([
                'name' => $request->name,
                'weight' => $request->weight,
                'product_image'=> $save_url,
                'supplier_id'=>$request->supplier_id,
                'unit_id'=>$request->unit_id,
                'category_id'=>$request->category_id,
                'brand_id'=>$request->brand_id,
                'created_by' => Auth::user()->id,
                'created_at' => Carbon::now(),

            ]);

            $notification = array(
                'message' => 'product Updated with Image Successfully',
                'alert-type' => 'success'
            );

            return redirect()->route('product.all')->with($notification);

        } else{

            product::findOrFail($product_id)->update([
                'name' => $request->name,
                'weight' => $request->weight,
                'supplier_id'=>$request->supplier_id,
                'unit_id'=>$request->unit_id,
                'category_id'=>$request->category_id,
                'brand_id'=>$request->brand_id,
                'created_by' => Auth::user()->id,
                'created_at' => Carbon::now(),
            ]);

            $notification = array(
                'message' => 'product Updated without Image Successfully',
                'alert-type' => 'success'
            );

            return redirect()->route('product.all')->with($notification);

        } // end else

    } // End Method


    public function ProductDelete($id){

        $product = Product::findOrFail($id);
        $img = $product->product_image;
        unlink($img);

        product::findOrFail($id)->delete();

        $notification = array(
            'message' => 'Product Deleted Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);

    } // End Method

}
