<?php

namespace App\Http\Controllers;

use App\Models\Order;
use Illuminate\Http\Request;
use DB;

class DoneOrderController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $order = Order::all();
        $data = DB::table('orders')->where('status', '=', '2')->sum('monney');
        $data1 = DB::table('orders')->where('address', '=', 'Thanh Khê - Đà Nẵng')->where('status', '=', '2')->sum('monney');
        $data3 = DB::table('orders')->whereMonth('updated_at', '12')->where('status', '=', '2')->sum('monney');
        return view('admin.pages.order.doneorder', ['order' => $order,'data' => $data,'data1' => $data1,'data3' => $data3]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $order = Order::find($id);
        if ($order->delete()) {
            return response()->json(['success' => 'Đã xóa thành công đơn hàng của ' . $order->name], 200);
        } else {
            return response()->json(['success' => 'Đã xóa thành công đơn hàng của ' . $order->name], 200);
        }
    }
}
