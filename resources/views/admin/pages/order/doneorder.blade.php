@extends('admin.layouts.master')

@section('title')
    Danh sách đơn hàng
@endsection
@section('content')
    <div class="content mt-3">
        <div class="animated fadeIn">
            <div class="row">

                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">Đơn hàng đã giao</strong>
                            <br>
                            <strong class="card-title">
                                Tổng Doanh Thu: {{number_format($data)}}
                            </strong>
                            <br>
                            <strong class="card-title">
                                Tổng tiền khách hàng ở địa chỉ X: {{number_format($data1)}}
                            </strong>
                            <br>
                            <strong class="card-title">
                                Doanh thu theo tháng 12: {{number_format($data3)}}
                            </strong>
                        </div>
                        <div class="card-body">
                            <table id="bootstrap-data-table-export" class="table table-striped table-bordered">
                                <thead>
                                <tr>
                                    <th>STT</th>
                                    <th>MÃ ĐƠN HÀNG</th>
                                    <th>THÔNG TIN</th>
                                    <th>THÀNH TIỀN</th>
                                    <th>GHI CHÚ</th>
                                    <th>TRẠNG THÁI</th>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach($order as $key => $value)
                                    @if($value->status==2)
                                        <tr>
                                            <td>{{ $key+1 }}</td>
                                            <td>{{ $value->code_order }}</td>
                                            <td>
                                                <b>TÊN KHÁCH HÀNG</b> :{{ $value->name }}
                                                <br/>
                                                <b>ĐỊA CHỈ</b> :{{ $value->address }}
                                                <br/>
                                                <b>EMAIL</b> :{{ $value->email }}
                                                <br/>
                                                <b>SỐ ĐIỆN THOẠI</b> :{{ $value->phone }}
                                            </td>
                                            <td>{{ number_format($value->monney) }}</td>
                                            <td>{{ $value->message }}</td>
                                            <td>
                                                @if($value->status==2)
                                                    {{ "Đã giao hàng thành công" }}
                                                @else
                                                    {{ "Chưa xác nhận" }}
                                                @endif
                                            </td>
                                        </tr>
                                    @endif
                                @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- .animated -->
    </div>
@endsection
