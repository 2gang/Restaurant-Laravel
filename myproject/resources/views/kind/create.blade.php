@extends('main')
@section('content')
		
<br>
<div class="alert mycolor1" role="alert">종류</div>

<form name = "form1" method="post" action="{{ route('kind.store') }}{{ $tmp }}">
@csrf

<form name="form1" method="post" action="">
<table class="table table-bordered table-sm mymargin5">
    <tr>
        <td width="20%" class="mycolor2"> 번호</td>
        <td width="80%" align="left"></td>
    </tr>
	<tr>
        <td width="20%" class="mycolor2"><font color="red">*</font> 종류명</td>
        <td align="left">
			<input  type="text" name="name" value = "{{old('name')}}" class="form-control form-control-sm" style="width:25%">
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
