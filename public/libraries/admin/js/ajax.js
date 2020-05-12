$.ajaxSetup({
    headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    }
});
$(document).ready(function () {
    $('.edit').click(function () {
       let id = $(this).data('id');
       $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
       //
        $.ajax({
            url : 'admin/categories/'+id+'/edit',
            dataType : 'json',
            type : 'get',
            success : function ($result) {
                console.log($result);
                $('.namecat').val($result.name);
                $('.title').text($result.name);
                if($result.status==1) {
                    $('.ht').attr('selected','selected');
                } else {
                    $('.kht').attr('selected','selected');
                }
            }
        });
        $('#update').click(function () {
            $('.error').hide();
            let ten = $('.namecat').val();
            let status= $('.status').val();
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });
            $.ajax({
                url : 'admin/categories/'+id,
                data : {
                    name : ten,
                    status : status,
                },
                type : 'put',
                dataType: 'json',
                success : function($result) {
                    console.log($result);
                    if($result.error == 'true') {
                        $('.error').show();
                        $('.error').text($result.message.name[0]);
                    } else {
                        toastr.success($result.success,'Thông báo',{timeOut:5000});
                        $('#update1').hide();
                        location.reload();
                    }
                }
            });
        });
    });

    //xóa
    $('.delete').click(function () {
        let id = $(this).data('id');
        $('.del').click(function () {
            $.ajax({
                url : 'admin/categories/'+id,
                dataType: 'json',
                type : 'delete',
                success : function ($result) {
                    console.log($result);
                    toastr.success($result.success,'Thông báo',{timeOut:5000});
                    $('#delete').hide();
                    location.reload();
                }
            });
        });
    });


    // update producttype

    $('.editProType').click(function () {
        let id = $(this).data('id');
        $('.error').hide();
        $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
        });
        $.ajax({
            url : 'admin/producttype/'+id+'/edit',
            dataType : 'json',
            type : 'get',
            success : function ($result) {
                console.log($result);
                $('.nameprotype').val($result.producttype.name);
                $('.title').text($result.name);
                var html = '';
                $.each($result.category,function ($key,$value) {
                    if($value['id'] == $result.producttype.idCategories) {
                        html += '<option value='+$value['id']+' selected>';
                            html+= $value['name'];
                        html += '</option>';
                    }
                    else {
                        html += '<option value='+$value['id']+'>';
                            html += $value['name'];
                        html += '</option>';
                    }
                });
                $('.idCategories').html(html);
                // bug status
                if($result.producttype.status==1) {
                    $('.kht').attr('selected','selected');
                } else {
                    $('.ht').attr('selected','selected');
                }
            }
        });

        $('.updateProductype').click(function () {
            let idCategories = $('.idCategories').val();
            let name  = $('.nameprotype').val();
            let status = $('.status').val();
            $.ajax({
                url : 'admin/producttype/'+id,
                data : {
                    idCategories : idCategories,
                    name : name,
                    status : status,
                },
                type : 'put',
                dataType : 'json',
                success : function ($data) {
                    if($data.error == 'true') {
                        $('.error').show();
                        $('.error').text($data.message.name[0]);
                    }
                    else {
                        toastr.success($data.success, 'Thông báo', {timeOut: 5000});
                        $('#update1').hide();
                        location.reload();
                    }
                }
            });
        });
    })
    //delete
    $('.deleteProType').click(function () {
        let id = $(this).data('id');
        $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });
        $('.delProType').click(function () {
            $.ajax({
                url : 'admin/producttype/'+id,
                dataType: 'json',
                type : 'delete',
                success : function ($data) {
                    toastr.success($data.success, 'Thông báo', {timeOut: 5000});
                    $('#delete').hide();
                    location.reload();
                }
            });
        });
    });

    $('.catePro').change(function () {
       let idCate = $(this).val();
       $.ajax({
           url : 'getproducttype',
           data : {
              idCate : idCate,
           },
           dataType : 'json',
           type : 'get',
           success : function ($data) {
               var html = '';
               $.each($data,function ($key,$value) {
                   html += '<option value='+$value['id']+'>';
                   html +=$value['name'];
                   html += '</option>';
               });
               $('.proTypePro').html(html);
           }
       });
    });
    //update product

    $('.editPro').click(function () {
        $('.errorName').hide();
        $('.errorDescription').hide();
        $('.errorQuantity').hide();
        $('.errorPrice').hide();
        $('.errorPromotional').hide();
        $('.errorImage').hide();
       let id =$(this).data('id');
       $.ajax({
           url : 'admin/product/'+id+'/edit',
           dataType : 'json',
           type : 'get',
           success : function ($data) {
               console.log($data);
               $('.namePro').val($data.product.name);
               CKEDITOR.instances['editor1'].setData($data.product.description);
               $('.quantityPro').val($data.product.quantity);
               $('.pricePro').val($data.product.price);
               $('.promotionalPro').val($data.product.promotional);
               $('.imageThum').attr('src','img/upload/product/'+$data.product.image);
               if($data.product.status==1) {
                   $('.ht').attr('selected','selected');
               } else {
                   $('.kht').attr('selected','selected');
               }
               var html = '';
               $.each($data.categories,function ($key,$value) {
                   if($data.product.idCategories == $value['id']) {
                       html += '<option selected value='+$value['id']+'>';
                       html +=$value['name'];
                       html += '</option>';
                   }
                   else {
                       html += '<option value='+$value['id']+'>';
                       html +=$value['name'];
                       html += '</option>';
                   }

               });
               $('.catePro').html(html);
               var html1 = '';
               $.each($data.producttype,function ($key,$value) {
                   if($data.product.idProductType == $value['id']) {
                       html1 += '<option selected value='+$value['id']+'>';
                       html1 +=$value['name'];
                       html1 += '</option>';
                   }
                   else {
                       html1 += '<option value='+$value['id']+'>';
                       html1 +=$value['name'];
                       html1 += '</option>';
                   }

               });
               $('.proTypePro').html(html1);
           }
       });
       $('#updateProduct').on('submit',function (event) {
            event.preventDefault();
            $.ajax({
               url : 'admin/updatePro/'+id,
                data : new FormData(this),
                contentType : false,
                processData : false,
                cache : false,
                type : 'post',
                success : function ($data) {
                    if($data.error == 'true') {
                        if($data.message.name) {
                            $('.errorName').show();
                            $('.errorName').text($data.message.name[0]);
                        }
                        if($data.message.description) {
                            $('.errorDescription').show();
                            $('.errorDescription').text($data.message.description[0]);
                        }
                        if($data.message.quantity) {
                            $('.errorQuantity').show();
                            $('.errorQuantity').text($data.message.quantity[0]);
                        }
                        if($data.message.price) {
                            $('.errorPrice').show();
                            $('.errorPrice').text($data.message.price[0]);
                        }
                        if($data.message.promotional) {
                            $('.errorPromotional').show();
                            $('.errorPromotional').text($data.message.promotional[0]);
                        }
                        if($data.message.image) {
                            $('.errorImage').show();
                            $('.errorImage').text($data.message.image[0]);
                        }
                    }
                    else {
                        toastr.success($data.result, 'Thông báo', {timeOut: 5000});
                        $('#update1').hide();
                        location.reload();
                    }

                }
            });
       });
    });

    //delete Product

    $('.deletePro').click(function () {
        let id = $(this).data('id');
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
        $('.delPro').click(function () {
            $.ajax({
                url : 'admin/product/'+id,
                dataType: 'json',
                type : 'delete',
                success : function ($data) {
                    toastr.success($data.success, 'Thông báo', {timeOut: 5000});
                    $('#delete').hide();
                    location.reload();
                }
            });
        });
    });


    //đơn hàng
    $('.editOrder').click(function () {
        let id = $(this).data('id');
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
        //
        $.ajax({
            url : 'admin/order/'+id+'/edit',
            dataType : 'json',
            type : 'get',
            success : function ($result) {
                $('.titleorder').text($result.order.name);
                console.log($result);
                if($result.order.status==1) {
                    $('.ht').attr('selected','selected');
                } else {
                    $('.kht').attr('selected','selected');
                }
            }
        });
        $('#update').click(function () {
            let status= $('.status').val();
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });
            $.ajax({
                url : 'admin/order/'+id,
                data : {
                    status : status,
                },
                type : 'put',
                dataType: 'json',
                success : function($result) {
                    console.log($result);
                    toastr.success($result.success,'Thông báo',{timeOut:5000});
                    $('#update1').hide();
                    location.reload();
                }
            });
        });
    });

    // hủy đơn hàng
    $('.deleteOrder').click(function () {
        let id = $(this).data('id');
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
        $('.delOrder').click(function () {
            $.ajax({
                url : 'admin/order/'+id,
                dataType: 'json',
                type : 'delete',
                success : function ($result) {
                    toastr.success($result.success,'Thông báo',{timeOut:5000});
                    $('#delete').hide();
                    location.reload();
                }
            });
        });
    });

    //đơn hàng đã gửi
    $('.editOrders').click(function () {
        let id = $(this).data('id');
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
        //
        $.ajax({
            url : 'admin/shiporder/'+id+'/edit',
            dataType : 'json',
            type : 'get',
            success : function (data) {
                console.log(data);
                $('.titleorders').text(data.order.name);
                if(data.order.status==1) {
                    $('.ht').attr('selected','selected');
                } else {
                    $('.kht').attr('selected','selected');
                }
            }
        });
        $('#update').click(function () {
            let status= $('.status').val();
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });
            $.ajax({
                url : 'admin/order/'+id,
                data : {
                    status : status,
                },
                type : 'put',
                dataType: 'json',
                success : function($result) {
                    console.log($result);
                    toastr.success($result.success,'Thông báo',{timeOut:5000});
                    $('#update1').hide();
                    location.reload();
                }
            });
        });
    });

    // hủy đơn hàng
    $('.deleteOrders').click(function () {
        let id = $(this).data('id');
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
        $('.delOrders').click(function () {
            $.ajax({
                url : 'admin/order/'+id,
                dataType: 'json',
                type : 'delete',
                success : function ($result) {
                    toastr.success($result.success,'Thông báo',{timeOut:5000});
                    $('#delete').hide();
                    location.reload();
                }
            });
        });
    });

    // update user
    $('.editUser').click(function () {
        $('.errorName').hide();
        $('.errorEmail').hide();
        $('.errorPassword').hide();
        $('.errorPhone').hide();
        $('.errorAvatar').hide();
        let id =$(this).data('id');
        console.log(id);
        $.ajax({
            url : 'admin/user/'+id+'/edit',
            dataType : 'json',
            type : 'get',
            success : function ($data) {
                $('.titleUser').text($data.user.name);
                if($data.user.status==0) {
                    $('.ht').attr('selected','selected');
                }
                else {
                    $('.kht').attr('selected','selected');
                }
                $('.nameUser').val($data.user.name);
                $('.emailUser').val($data.user.email);
                if($data.user.avatar=='') {
                    $('.imageThum').attr('src','img/upload/user/'+'default.png');
                }
                else {
                    $('.imageThum').attr('src','img/upload/user/'+$data.user.avatar);
                }
                $('.passwordUser').val($data.user.password);
                $('.phoneUser').val($data.user.phone);
                if($data.user.role==1) {
                    $('.admin').attr('selected','selected');
                }
                else if($data.user.role==2) {
                    $('.qldm').attr('selected','selected');
                }
                else if($data.user.role==3) {
                    $('.nvbh').attr('selected','selected');
                }
                else if($data.user.role==4) {
                    $('.qldh').attr('selected','selected');
                }
                else {
                    $('.customer').attr('selected','selected');
                }
            }
        });
        $('.updateUser').click(function () {
            $('.error').hide();
            let ten = $('.nameUser').val();
            let email = $('.emailUser').val();
            let pass = $('.passwordUser').val();
            let phone = $('.phoneUser').val();
            let avatar = $('.avatarUser').val();
            let role = $('.roleUser').val();
            let status= $('.statusUser').val();
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });
            $.ajax({
                url : 'admin/user/'+id,
                data : {
                    name : ten,
                    email : email,
                    phone : phone,
                    password : pass,
                    role : role,
                    status : status,
                },
                type : 'put',
                dataType: 'json',
                success : function($result) {
                    console.log($result);
                    if($result.error == 'true') {
                        $('.error').show();
                        $('.error').text($result.message);
                    } else {
                        toastr.success($result.success,'Thông báo',{timeOut:5000});
                    $('#update1').hide();
                    location.reload();
                    }
                }
            });
        });
    });
});
