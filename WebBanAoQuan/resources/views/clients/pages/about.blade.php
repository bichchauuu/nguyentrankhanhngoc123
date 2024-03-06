@extends('clients.layouts.app')
@section('contents')
    <div class="breadcrumb-section section-b-space" style="padding-top:20px;padding-bottom:20px;">
        <ul class="circles">
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
        </ul>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h3>Giới thiệu</h3>
                    <nav>
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="index.htm">
                                    <i class="fas fa-home"></i>
                                </a>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">About</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <!-- Shop Section start -->
    <div class="container-fluid bg-white py-5">
        <div class="container">
            <div style="display: inline-block">
                <h3 class="fw-bold border-3 border-bottom border-primary p-1 text-uppercase">GIỚI THIỆU VỀ ShopiiVui</h3>
            </div>
            <div class="d-flex flex-column fs-5">
                <span class="mt-4">Chào mừng đến với ShopiiVui!

Chúng tôi rất vui được chia sẻ với bạn về sứ mệnh của chúng tôi trong việc mang đến niềm vui thông qua thời trang. Tại ShopiiVui, chúng tôi không chỉ là một nơi mua sắm, mà còn là điểm đến để bạn tìm thấy những niềm vui và sự hài lòng từ việc thể hiện phong cách cá nhân.

Với một loạt các sản phẩm thời trang đa dạng và phong phú, từ những thiết kế đơn giản nhưng ấn tượng đến những xu hướng mới nhất và sành điệu, ShopiiVui cam kết cung cấp cho bạn những trải nghiệm mua sắm thú vị và đáng nhớ nhất.

Chúng tôi luôn tận tụy phục vụ bạn với sự chuyên nghiệp và tận tâm, và mong muốn mang lại niềm vui và sự hài lòng cho mỗi khách hàng khi ghé thăm cửa hàng của chúng tôi.

Hãy đồng hành cùng ShopiiVui để khám phá và tận hưởng niềm vui từ thời trang ngay hôm nay!
                </span>
            </div>
            <div class="mt-4">
                <img class="d-block w-100" src="{{ asset('images/showroom.jpg') }}" alt="">
            </div>
        </div>
    </div>
@endsection
