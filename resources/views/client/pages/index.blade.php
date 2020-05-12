@extends('client.layouts.master')
@section('title')
	Trang chủ
@endsection

@section('slide')
    @include('client.layouts.slide')
@endsection

@section('content')
    <!-- tittle heading -->
    <h3 class="tittle-w3l text-center mb-lg-5 mb-sm-4 mb-3">
        <span>S</span>ản
        <span>P</span>hẩm
        <span>C</span>ủa
        <span>C</span>húng
        <span>T</span>ôi
    </h3>
    <!-- //tittle heading -->
    <div class="row">
        <!-- product left -->
        <div class="agileinfo-ads-display col-lg-9">
            <div class="wrapper">
                <!-- first section -->
                <div class="product-sec1 px-sm-4 px-3 py-sm-5  py-3 mb-4">
                    <h3 class="heading-tittle text-center font-italic">
                        @if(isset($procacanh)) {{ $procacanh[0]->Categories->name }} @endif
                    </h3>
                    <div class="row">
                        @foreach($procacanh as $pro)
                            <div class="col-md-4 product-men mt-5">
                                <div class="men-pro-item simpleCart_shelfItem">
                                    <div class="men-thumb-item text-center">
                                        <img src="img/upload/product/{{ $pro->image }}" class="img-fluid" alt="{{ $pro->name }}">
                                        <div class="men-cart-pro">
                                            <div class="inner-men-cart-pro">
                                                <a href="{{ $pro->slug }}.html" class="link-product-add-cart">Chi tiết</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item-info-product text-center border-top mt-4">
                                        <h4 class="pt-1">
                                            <a href="{{ $pro->slug }}.html">{{ $pro->name }}</a>
                                        </h4>
                                        <div class="info-product-price my-2">
                                            @if($pro->promotional>0)
                                                <span class="item_price">
													{{ number_format($pro->promotional) }}
												</span>
                                                <del>{{ number_format($pro->price) }}</del>
                                            @else
                                                <span class="item_price">
													{{ number_format($pro->price) }}
												</span>
                                            @endif
                                        </div>
                                        <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                            <a href="{{ route('addCart',['id' => $pro->id]) }}">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
                <!-- //first section -->
                <!-- second section -->
                <div class="product-sec1 px-sm-4 px-3 py-sm-5  py-3 mb-4">
                    <h3 class="heading-tittle text-center font-italic">
                        @if(isset($procaycanh)) {{ $procaycanh[0]->Categories->name }} @endif
                    </h3>
                    <div class="row">
                        @foreach($procaycanh as $pro)
                            <div class="col-md-4 product-men mt-5">
                                <div class="men-pro-item simpleCart_shelfItem">
                                    <div class="men-thumb-item text-center">
                                        <img src="img/upload/product/{{ $pro->image }}" class="img-fluid" alt="{{ $pro->name }}">
                                        <div class="men-cart-pro">
                                            <div class="inner-men-cart-pro">
                                                <a href="{{ $pro->slug }}.html" class="link-product-add-cart">Chi tiết</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item-info-product text-center border-top mt-4">
                                        <h4 class="pt-1">
                                            <a href="single.html">{{ $pro->name }}</a>
                                        </h4>
                                        <div class="info-product-price my-2">
                                            @if($pro->promotional>0)
                                                <span class="item_price">
													{{ number_format($pro->promotional) }}
												</span>
                                                <del>{{ number_format($pro->price) }}</del>
                                            @else
                                                <span class="item_price">
													{{ number_format($pro->price) }}
												</span>
                                            @endif
                                        </div>
                                        <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                            <a href="{{ route('addCart',['id' => $pro->id]) }}">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
                <!-- //second section -->
                <!-- third section -->
                <div class="product-sec1 px-sm-4 px-3 py-sm-5  py-3 mb-4">
                    <h3 class="heading-tittle text-center font-italic">
                        @if(isset($prochimcanh)) {{ $prochimcanh[0]->Categories->name }} @endif
                    </h3>
                    <div class="row">
                        @foreach($prochimcanh as $pro)
                            <div class="col-md-4 product-men mt-5">
                                <div class="men-pro-item simpleCart_shelfItem">
                                    <div class="men-thumb-item text-center">
                                        <img src="img/upload/product/{{ $pro->image }}" class="img-fluid" alt="{{ $pro->name }}">
                                        <div class="men-cart-pro">
                                            <div class="inner-men-cart-pro">
                                                <a href="{{ $pro->slug }}.html" class="link-product-add-cart">Chi tiết</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item-info-product text-center border-top mt-4">
                                        <h4 class="pt-1">
                                            <a href="{{ $pro->slug }}.html">{{ $pro->name }}</a>
                                        </h4>
                                        <div class="info-product-price my-2">
                                            @if($pro->promotional>0)
                                                <span class="item_price">
													{{ number_format($pro->promotional) }}
												</span>
                                                <del>{{ number_format($pro->price) }}</del>
                                            @else
                                                <span class="item_price">
													{{ number_format($pro->price) }}
												</span>
                                            @endif
                                        </div>
                                        <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                            <a href="{{ route('addCart',['id' => $pro->id]) }}">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
                <!-- //second section -->
                <!-- third section -->
                <div class="product-sec1 px-sm-4 px-3 py-sm-5  py-3 mb-4">
                    <h3 class="heading-tittle text-center font-italic">
                        @if(isset($prophukien)) {{ $prophukien[0]->Categories->name }} @endif
                    </h3>
                    <div class="row">
                        @foreach($prophukien as $pro)
                            <div class="col-md-4 product-men mt-5">
                                <div class="men-pro-item simpleCart_shelfItem">
                                    <div class="men-thumb-item text-center">
                                        <img src="img/upload/product/{{ $pro->image }}" class="img-fluid" alt="{{ $pro->name }}">
                                        <div class="men-cart-pro">
                                            <div class="inner-men-cart-pro">
                                                <a href="{{ $pro->slug }}.html" class="link-product-add-cart">Chi tiết</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item-info-product text-center border-top mt-4">
                                        <h4 class="pt-1">
                                            <a href="{{ $pro->slug }}.html">{{ $pro->name }}</a>
                                        </h4>
                                        <div class="info-product-price my-2">
                                            @if($pro->promotional>0)
                                                <span class="item_price">
													{{ number_format($pro->promotional) }}
												</span>
                                                <del>{{ number_format($pro->price) }}</del>
                                            @else
                                                <span class="item_price">
													{{ number_format($pro->price) }}
												</span>
                                            @endif
                                        </div>
                                        <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                            <a href="{{ route('addCart',['id' => $pro->id]) }}">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
                <!-- //second section -->
                <!-- third section -->

                <!-- //second section -->
                <!-- third section -->
                <div class="product-sec1 product-sec2 px-sm-5 px-3">
                    <div class="row">
                        <h3 class="col-md-4 effect-bg">Thứ 6 Đen Tối</h3>
                        <p class="w3l-nut-middle">Giảm chớp nhoáng</p>
                        <div class="col-md-8 bg-right-nut">
                            <img src="assets/client/images/bettahm.png" width="400px" style="float: right !important;" alt="">
                        </div>
                    </div>
                </div>
                <!-- //third section -->
                <!-- fourth section -->
                <div class="product-sec1 px-sm-4 px-3 py-sm-5  py-3 mb-4">
                    <h3 class="heading-tittle text-center font-italic">
                        @if(isset($promoichimca)) {{ $promoichimca[0]->Categories->name }} @endif
                    </h3>
                    <div class="row">
                        @foreach($promoichimca as $pro)
                            <div class="col-md-4 product-men mt-5">
                                <div class="men-pro-item simpleCart_shelfItem">
                                    <div class="men-thumb-item text-center">
                                        <img src="img/upload/product/{{ $pro->image }}" class="img-fluid" alt="{{ $pro->name }}">
                                        <div class="men-cart-pro">
                                            <div class="inner-men-cart-pro">
                                                <a href="{{ $pro->slug }}.html" class="link-product-add-cart">Chi tiết</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item-info-product text-center border-top mt-4">
                                        <h4 class="pt-1">
                                            <a href="{{ $pro->slug }}.html">{{ $pro->name }}</a>
                                        </h4>
                                        <div class="info-product-price my-2">
                                            @if($pro->promotional>0)
                                                <span class="item_price">
													{{ number_format($pro->promotional) }}
												</span>
                                                <del>{{ number_format($pro->price) }}</del>
                                            @else
                                                <span class="item_price">
													{{ number_format($pro->price) }}
												</span>
                                            @endif
                                        </div>
                                        <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                            <a href="{{ route('addCart',['id' => $pro->id]) }}">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
                <!-- //fourth section -->
            </div>
        </div>
        <!-- //product left -->

        <!-- product right -->
        @include('client.layouts.sidebar')
    </div>
@endsection
