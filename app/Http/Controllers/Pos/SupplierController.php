<?php

namespace App\Http\Controllers\Pos;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Supplier;
use Auth;
use Illuminate\Support\Carbon;

class SupplierController extends Controller
{
    // LIST SUPPLIERS
    public function SupplierAll(){

        // $suppliers = Supplier::all();
        $suppliers = Supplier::latest()->get();
        return view('backend.supplier.supplier_all',compact('suppliers'));
    } // End Method


    //  ADD SUPPLIERS
    public function SupplierAdd(){

        return view('backend.supplier.supplier_add');

    } // End Method


    // INSERT SUPPLIERS INTO DB
    public function SupplierStore(Request $request){

        Supplier::insert([
            'name'=> $request->name,
            'mobile_no'=> $request->mobile_no,
            'email'=> $request->email,
            'address'=> $request->address,
            'country'=> $request->country,
            'created_by'=> Auth::user()->id,
            'created_at'=> Carbon::now(),
        ]);

        $notification = array(
            'message' => 'Supplier Inserted Successfully',
            'alert-type' => 'success'
        );

        return redirect()->route('supplier.all')->with($notification);


    } // End Method


    // EDIT SUPPLIER
    public function SupplierEdit($id){
        $supplier = Supplier::findOrFail($id);
        return view('backend.supplier.supplier_edit', compact('supplier'));
    }// End Method


    // UPDATE SUPPLIER
    public function SupplierUpdate(Request $request){
        $supplier_id = $request->id;

        Supplier::findOrFail( $supplier_id)->update([
            'name'=> $request->name,
            'mobile_no'=> $request->mobile_no,
            'email'=> $request->email,
            'address'=> $request->address,
            'country'=> $request->country,
            'created_by'=> Auth::user()->id,
            'created_at'=> Carbon::now(),
        ]);

        $notification = array(
            'message' => 'Supplier Updated Successfully',
            'alert-type' => 'success'
        );

        return redirect()->route('supplier.all')->with($notification);


    }// End Method

      // DELETE SUPPLIER
      public function SupplierDelete($id){

        Supplier::findOrFail($id)->delete();

         $notification = array(
              'message' => 'Supplier Deleted Successfully',
              'alert-type' => 'success'
          );

          return redirect()->back()->with($notification);

      } // End Method

}
