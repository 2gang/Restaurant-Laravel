<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>식당 관리 사이트</title>

    <!-- Custom fonts for this template-->
    <link href="{{ asset('public/vendor/fontawesome-free/css/all.min.css') }}" rel="stylesheet" type="text/css">

    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="{{ asset('css/sb-admin-2.min.css') }}" rel="stylesheet">
	<link  href="{{asset('my/css/bootstrap.min.css')}}" rel="stylesheet">
	<link  href="{{asset('my/css/my.css')}}" rel="stylesheet">
	<link href="{{ asset('my/css/bootstrap5-datetimepicker.css') }}" rel="stylesheet">
	<link href="{{ asset('my/css/all.min.css') }}" rel="stylesheet">
	<script src="{{asset('my/js/jquery-3.6.0.min.js')}}"></script>
	<script src="{{asset('my/js/bootstrap.min.js')}}"></script>	
	<script src="{{ asset('my/js/moment-with-locales.min.js') }}"></script>
	<script src="{{ asset('my/js/bootstrap5-datetimepicker.js') }}"></script>
	
	<!-- Bootstrap core JavaScript-->
    <script src="{{ asset('public/vendor/jquery/jquery.min.js') }}"></script>
    <script src="{{ asset('public/vendor/bootstrap/js/bootstrap.bundle.min.js') }}"></script>

    <!-- Core plugin JavaScript-->
    <script src="{{ asset('public/vendor/jquery-easing/jquery.easing.min.js') }}"></script>

    <!-- Custom scripts for all pages-->
    <script src="{{ asset('public/js/sb-admin-2.min.js') }}"></script>

</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="{{ route('menu.index') }}">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-pizza-slice"></i>
                </div>
                <div class="sidebar-brand-text mx-3">식당 관리</div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">
			
			<!-- Heading -->
            <div class="sidebar-heading">
                메뉴
            </div>

            <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
                <a class="nav-link" href="{{ route('menu.index') }}">
                    <i class="fas fa-fw fa-cookie-bite"></i>
                    <span>메뉴</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                직원
            </div>

            <li class="nav-item">
                <a class="nav-link" href="{{ route('cook.index') }}">
                    <i class="fas fa-fw fa-bread-slice"></i>
                    <span>요리사</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                기타 정보
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages"
                    aria-expanded="true" aria-controls="collapsePages">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>기초 정보</span>
                </a>
                <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="{{ route('kind.index') }}">종류</a>
                        <a class="collapse-item" href="{{ route('major.index') }}">전공</a>
                    </div>
                </div>
            </li>


        </ul>
	
        <!-- End of Sidebar -->
		

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column" style="margin:25px">
					@yield('content')	
					


    </div>
    <!-- End of Page Wrapper -->
	
</div>
    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>


</body>

</html>