@extends('main')
@section('content')
	
<br>
<div class="alert mycolor1" role="alert">종류</div>

<form name="form1" method="post" action="">
<table class="table table-bordered table-sm mymargin5">
    <tr>
        <td width="20%" class="mycolor2"> 번호</td>
        <td width="80%" align="left">{{ $row->id }}</td>
    </tr>
	
	<tr>
        <td width="20%" class="mycolor2"><font color="red">*</font> 구분명</td>
        <td width = "80%" align="left">{{ $row->name16 }}</td>
    </tr>
	
</table>
<div align="center">
    <a href="{{ route('kind.edit', $row->id) }}{{ $tmp }}" class="btn btn-sm mycolor1">수정</a>
	<form action = "{{ route('kind.destroy', $row->id)}}">
		@csrf
		@method('DELETE')
		<button type="submit" class="btn btn-sm mycolor1" onClick="return confirm('삭제할까요?');">삭제</button>&nbsp
	</form>
    <input type="button" value = "이전화면" class="btn btn-sm mycolor1" onClick = "history.back();">
	
</div>

@endsection()

</form>



	</div>
</body>
</html>
