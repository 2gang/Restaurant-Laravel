@extends('main')
@section('content')
		
<br>
<div class="alert mycolor1" role="alert">전공</div>

<form name = "form1" method="post" action="{{ route('major.update', $row->id) }}{{ $tmp }}">
@csrf
@method('PATCH')

<form name="form1" method="post" action="">
<table class="table table-bordered table-sm mymargin5">
    <tr>
        <td width="20%" class="mycolor2"> 번호</td>
        <td width="80%" align="left">{{ $row->id }}</td>
    </tr>
	<tr>
        <td width="20%" class="mycolor2"><font color="red">*</font> 전공명</td>
        <td align="left">
			<input  type="text" name="name" value = "{{ $row->name16 }}" class="form-control form-control-sm" style="width:25%">
			@error('name') {{ $message }} @enderror
        </td>
    </tr>
</table>
<div align="center">
    <input type="submit" value = "저장" class="btn btn-sm mycolor1">&nbsp
    <input type="button" value = "이전화면" class="btn btn-sm mycolor1" onClick = "history.back();">
	
</div>
@endsection()

</form>



	</div>
</body>
</html>
