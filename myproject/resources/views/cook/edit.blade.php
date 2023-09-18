@extends('main')
@section('content')
		
<br>
<div class="alert mycolor1" role="alert">요리사</div>

<form name = "form1" method="post" action="{{ route('cook.update', $row->id) }}{{ $tmp }}"
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
				@if($row -> pic16)
					<img src="{{ asset('/storage/cook_img/'. $row->pic16) }}" width="200"
							class = "img-fluid img-thumbnail mymargin5">
				@else
					<img src="" width="200" height="150" class = "img-fluid img-thumbnail mymargin5">
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
				<td width="20%" class="mycolor2"><font color="red">*</font> 요리사</td>
				<td align="left">
					<input  type="text" name="name" value = "{{ $row->name16 }}" class="form-control form-control-sm" style="width:25%">
					@error('name') {{ $message }} @enderror
				</td>
			</tr>
			
			<tr>
				<td width="20%" class="mycolor2"><font color="red">*</font> 전공</td>
				<td width="80%" align="left">
					<div class="d-inline-flex">
					   <select name="majors_id" class="form-select form-select-sm">
							<option value="" selected>선택하세요.</option>
				@foreach ($list as $row1)
					@if ( $row->majors_id16 == $row1->id )
						<option value="{{ $row1->id }}" selected>{{ $row1->name16 }}</option>
					@else
						<option value="{{ $row1->id }}">{{ $row1->name16 }}</option>
					@endif
				@endforeach
					</select>
			   </div>
			</tr>
			
			<tr>
				<td width="20%" class="mycolor2"> 경력</td>
				<td align="left">
					<input  type="text" name="career" value = "{{ $row->career16 }}" class="form-control form-control-sm" style="width:25%">
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



	</div>
</body>
</html>
