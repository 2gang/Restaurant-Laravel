@extends('main')
@section('content')
	
<br>
<div class="alert mycolor1" role="alert">메뉴</div>

<form name="form1" method="post" action="">
<div class="d-flex">
	<div class="flex-grow" style="flex:1 2 100%">
		<table class="table table-bordered table-sm mymargin5">
			<tr>
				<td width="20%" class="mycolor2"> 사진</td>
				<td width = "80%" align="left">
					<b> 파일이름 </b> : {{ $row-> pic16 }} <br>
				@if($row -> pic16)
					<img src="{{ asset('/storage/menu_img/'. $row->pic16) }}" width="300" heigth="250"
							class = "img-fluid img-thumbnail mymargin5">
				@else
					<img src=" " width="300" height="250" class = "img-fluid img-thumbnail mymargin5">
				@endif
				</td>
			</tr>
		</table>
	</div>
		<table class="table table-bordered table-sm mymargin5">
			<tr>
				<td width="20%" class="mycolor2" align="center"> 번호</td>
				<td align="left">{{ $row->id }}</td>
			</tr>
			
			<tr>
				<td width="20%" class="mycolor2"> 종류명</td>
				<td align="left">{{ $row->kind_name }}</td>
			</tr>
			
			<tr>
				<td width="20%" class="mycolor2"> 음식명</td>
				<td align="left">{{ $row->name16 }}</td>
			</tr>
			
			<tr>
				<td width="20%" class="mycolor2"> 가격</td>
				<td align="left">{{ number_format($row->price16) }}</td>
			</tr>
		</table>
</div>
<div align="center">
    <a href="{{ route('menu.edit', $row->id) }}{{ $tmp }}" class="btn btn-sm mycolor1">수정</a>
	<form action = "{{ route('menu.destroy', $row->id)}}">
		@csrf
		@method('DELETE')
		<button type="submit" class="btn btn-sm mycolor1" onClick="return confirm('삭제할까요?');">삭제</button>&nbsp
	</form>
    <input type="button" value = "이전화면" class="btn btn-sm mycolor1" onClick = "history.back();">
	
</div>

@endsection()

</form>

</body>
</html>
