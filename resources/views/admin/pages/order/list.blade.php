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
                            <strong class="card-title">Đơn hàng</strong>
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
                                    <th>CHỈNH SỬA</th>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach($order as $key => $value)
                                    @if($value->status==0)
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
                                            @if($value->status==1)
                                                {{ "Đã xác nhận" }}
                                            @else
                                                {{ "Chưa xác nhận" }}
                                            @endif
                                        </td>
                                        <td>
                                            <button class="btn btn-primary editOrder" data-id="{{ $value->id }}" data-backdrop="false" data-toggle="modal"
                                                    data-target="#update1" title="{{ "Sủa".$value->name }}" ><i class="fa fa-pencil-square-o"></i></button>
                                            <button class="btn btn-danger deleteOrder"  data-id="{{ $value->id }}" data-backdrop="false" data-toggle="modal"
                                                    data-target="#delete" title="{{ "Xóa".$value->name }}" ><i class="fa fa-trash-o"></i></button>
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
    <div class="modal fade" id="update1">
        <div class="modal-dialog">
            <div class="modal-content none_radius">
                <div class="alert alert-danger" style="display:none"></div>
                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title" style="text-transform: uppercase;">Xác nhận đơn của <span class="titleorder" ></span></h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>

                <!-- Modal body -->
                <div class="row" style=" margin: 5px;">
                    <div class="col-lg-12">
                        <form>
                            <div class="form-group">
                                <label>Trạng thái</label>
                                <br>
                                <select class="form-control status" name="status">
                                    <option value="1" class="ht" >Xác Nhận</option>
                                    <option value="0" class="kht" >Chưa xác nhận</option>
                                </select>
                            </div>
                            <div class="form-actions form-group">
                                <button type="button" class="btn btn-primary updateOder" id="update" style="font-size: 11px; border-radius:2px;
                                                                            font-weight: 700;">Cập Nhật</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <div class="modal fade" id="delete" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content none_radius">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title" style="text-transform: uppercase;">Xóa <span class="title" ></span></h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>

                <!-- Modal body -->
                <form>
                    <div class="modal-body">
                        <p> Bạn có muốn xóa không ?</p>
                        <input type="hidden" name="menu_tab1_" value="">
                    </div>
                    <!-- Modal footer -->
                    <div class="modal-footer">
                        <a class="btn btn-danger delOrder" href="" >XÓA</a>
                        <button type="button" href="" class="btn btn-danger" >KHÔNG</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
@endsection
