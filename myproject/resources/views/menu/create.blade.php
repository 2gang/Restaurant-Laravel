@extends('main')
@section('content')
		
<br>
<div class="alert mycolor1" role="alert">메뉴</div>

<form name = "form1" method="post" action="{{ route('menu.store') }}{{ $tmp }}"
	enctype="multipart/form-data">
@csrf

<div class="d-flex">
	<div class="flex-grow" style="flex:1 2 100%">
		<table class="table table-bordered table-sm mymargin5">
			<tr>
				<td width="20%" class="mycolor2"></font> 사진</td>
				<td align="left">
					<input  type="file" name="pic" size = "20" value = "" class="form-control form-control-sm">
				</td>
			</tr>
		</table>
	</div>
		<table class="table table-bordered table-sm mymargin5">
			<tr>
				<td width="20%" class="mycolor2"> 번호</td>
				<td align="left"></td>
			</tr>
			
			<tr>
				<td width="20%" class="mycolor2"><font color="red">*</font> 종류명</td>
				<td width="80%" align="left">
					<div class="d-inline-flex">
					   <select name="kinds_id" class="form-select form-select-sm">
						<option value="" selected>선택하세요.</option>
						
					@foreach ($list as $row)
						@if ( $row->id == old('kinds_id') )
							<option value="{{ $row->id }}" selected>{{ $row->name16 }}</option>
						@else
							<option value="{{ $row->id }}">{{ $row->name16 }}</option>
						@endif
					@endforeach
						</select>
				   </div>
				    @error('kinds_id') {{ $message }} @enderror
				</td>
			</tr>
			
			<tr>
				<td width="20%" class="mycolor2"><font color="red">*</font> 음식명</td>
				<td align="left">
					<input  type="text" name="name" size = "30" maxlength = "50" value = "{{old('name')}}" class="form-control form-control-sm" style="width:25%">
					@error('name') {{ $message }} @enderror
				</td>
			</tr>
			
			<tr>
				<td width="20%" class="mycolor2"><font color="red">*</font> 가격</td>
				<td align="left">
					<input  type="text" name="price" size = "20" maxlength = "20" value = "{{old('price')}}" class="form-control form-control-sm" style="width:25%">
					@error('price') {{ $message }} @enderror
				</td>
			</tr>
		</table>
</div>



<div align="center">
    <input type="submit" value = "저장" class="btn btn-sm mycolor1">&nbsp
    <input type="button" value = "이전화면" class="btn btn-sm mycolor1" onClick = "history.back();">
	
</div>


</form>
@endsection()
