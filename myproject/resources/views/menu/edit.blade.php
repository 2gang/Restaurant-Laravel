@extends('main')
@section('content')
		
<br>
<div class="alert mycolor1" role="alert">메뉴</div>

<form name = "form1" method="post" action="{{ route('menu.update', $row->id) }}{{ $tmp }}"
	enctype="multipart/form-data">
@csrf
@method('PATCH')

<form name="form1" method="post" action="">
<div class="d-flex">
	<div class="flex-grow" style="flex:1 2 100%">
		<table class="table table-bordered table-sm mymargin5">
			<tr>
				<td width="20%" class="mycolor2"> 사진</td>
				<td width = "80%" align="left">
					<div class="d-inline-flex">
					   <input type="file" name="pic" value="" class="form-control form-control-sm">
					</div>
					<br><br>
					<b> 파일이름 </b> : <?=$row-> pic16; ?> <br>
				@if ($row -> pic16)
					<img src="{{ asset('/storage/menu_img/'. $row->pic16) }}" width="300" heigth="250"
							class = "img-fluid img-thumbnail mymargin5">
				@else
					<img src=" " width="350" height="250" class = "img-fluid img-thumbnail mymargin5">
				@endif
				</td>
			</tr>
		</table>
	</div>
		<table class="table table-bordered table-sm mymargin5">
			<tr>
				<td width="20%" class="mycolor2"> 번호</td>
				<td align="left">{{ $row->id }}</td>
			</tr>
			
			<tr>
				<td width="20%" class="mycolor2"><font color="red">*</font> 종류명</td>
				<td width="80%" align="left">
					<div class="d-inline-flex">
					   <select name="kinds_id" class="form-control form-control-sm">
							<option value="" selected>선택하세요.</option>
				@foreach ($list as $row1)
					@if ( $row->kinds_id16 == $row1->id )
						<option value="{{ $row1->id }}" selected>{{ $row1->name16 }}</option>
					@else
						<option value="{{ $row1->id }}">{{ $row1->name16 }}</option>
					@endif
				@endforeach
					</select>
					</div>
			</tr>
			
			<tr>
				<td width="20%" class="mycolor2"><font color="red">*</font> 음식명</td>
				<td align="left">
					<input  type="text" name="name" value = "{{ $row->name16 }}" class="form-control form-control-sm" style="width:25%">
					@error('name') {{ $message }} @enderror
				</td>
			</tr>
			
			<tr>
				<td width="20%" class="mycolor2"><font color="red">*</font> 가격</td>
				<td align="left">
					<input  type="text" name="price" value = "{{ $row->price16 }}" class="form-control form-control-sm" style="width:25%">
					@error('name') {{ $message }} @enderror
				</td>
			</tr>
		</table>
</div>

<div align="center">
    <input type="submit" value = "저장" class="btn btn-sm mycolor1">&nbsp
    <input type="button" value = "이전화면" class="btn btn-sm mycolor1" onClick = "history.back();">
	
</div>
@endsection()

</form>

</body>
</html>
