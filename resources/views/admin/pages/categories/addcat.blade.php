@extends('admin.layouts.master')

@section('title')
    Thêm danh mục
@endsection

@section('content')
    <div class="card-header">
        <strong class="card-title">Thêm danh mục</strong>
    </div>
    <div class="card-body card-block" style=" margin: 5px;">
        <form action="{{Route('categories.store')}}" method="post" >
            @csrf
            <div class="form-group">
                <label>Tên danh mục</label>
                <br>
                <input type="text" id="username3" name="name" class="form-control" placeholder="Vui lòng nhập tên danh mục">
            </div>
            <div class="form-group">
                <label>Trạng thái</label>
                <br>
                <select class="form-control" name="status">
                    <option value="1">Hiển thị</option>
                    <option value="0">Không hiển thị</option>
                </select>
            </div>
            <div class="form-actions form-group">
                <button style="float: right" type="submit" class="btn btn-success btn-sm">Thêm</button>
            </div>
        </form>
    </div>
@endsection
