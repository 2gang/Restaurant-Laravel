<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Cook;
use App\Models\Major;
use DB;
use Image;

class CookController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
		$data['tmp'] = $this -> qstring();
		
        $text1 = request('text1');
		$data['text1'] = $text1;
		$data['list'] = $this->getlist($text1);		// 자료 읽기
		return view( 'cook.index', $data );
    }
	
	public function getlist($text1) 
		{
			$result = Cook::leftjoin('majors', 'cooks.majors_id16', '=', 'majors.id')->
				select('cooks.*', 'majors.name16 as major_name')->
					where('cooks.name16', 'like', '%' . $text1 . '%')->
					orderby('cooks.name16', 'asc')->
					paginate(5)->appends(['text1'=>$text1]);

			
			return $result;
		}

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
		$data['list'] = $this->getlist_major();
		
		$data['tmp'] = $this -> qstring();
        return view('cook.create', $data);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
	 
	function getlist_major()
	{
		$result=Major::orderby('name16')->get();
		return $result;
	}

    public function store(Request $request)
    {
		$row = new Cook;
		$this -> save_row($request, $row);
		
		$tmp = $this -> qstring();
		return redirect('cook'. $tmp);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {	
		$data['tmp'] = $this -> qstring();
		
        $data['row'] = Cook::leftjoin('majors', 'cooks.majors_id16', '=', 'majors.id')->
			select('cooks.*', 'majors.name16 as major_name')->
			where('cooks.id', '=', $id)->first();

		return view('cook.show' , $data);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
		$data['list']=$this->getlist_major();
		
		$data['tmp'] = $this -> qstring();
		
        $data['row'] = Cook::find( $id );
		return view('cook.edit', $data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $row = Cook::find($id);
		$this -> save_row($request, $row);
		
		$tmp = $this -> qstring();
		return redirect('cook'. $tmp);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Cook::find($id)->delete();
		
		$tmp = $this -> qstring();
		return redirect('cook'. $tmp);
    }
	
	public function save_row(Request $request, $row) {
		$request->validate( [
		'majors_id' => 'required|numeric',
        'name' => 'required|max:20',
		],
		[
		'majors_id.required' => '종류명은 필수입력입니다.',
        'name.required' => '이름은 필수입력입니다.',
        'name.max' => '20자 이내여야 합니다.',
		]);
		
		$row->majors_id16 = $request->input('majors_id');
		$row->name16 = $request->input('name');
		$row->career16 = $request->input('career');
		
		if($request-> hasFile('pic'))			//Upload할 파일이 있는 경우
		{
			$pic = $request->file('pic');
			$pic_name = $pic -> getClientOriginalName();		//파일 이름
			$pic -> storeAs('public/cook_img', $pic_name);	//파일 저장

			
			$row -> pic16 = $pic_name;
		}
		
		$row -> save();
	}
	
	public function qstring()
	{
		$text1 = request('text1') ? request('text1') : "";
		$page = request('page') ? request('page') : "1";
		
		$tmp = $text1 ? "?text1=$text1&page=$page" : "?page=$page";
		
		return $tmp;
	}

	
}
