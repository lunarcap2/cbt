<!DOCTYPE html>
<!--
  Copyright (c) 2014-2023, CKSource Holding sp. z o.o. All rights reserved.
  This file is licensed under the terms of the MIT License (see LICENSE.md).
-->

<html lang="ko" dir="ltr">

<head>
	<title>CKEditor 5 ClassicEditor build</title>
	<meta charset="euc-kr">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" type="image/png" href="https://c.cksource.com/a/1/logos/ckeditor5.png">
	<link rel="stylesheet" type="text/css" href="/editor/build/styles.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	
	
</head>

<body data-editor="ClassicEditor" data-collaboration="false" data-revision-history="false">
	<header>
	</header>
	<div style="" class="cbt">
		<style>
			/*
			CKEDITOR5 Classic으로 설정되었음
			모든 세팅은 사용자가 글을 아직 적지 않은 상태를 가정하고 세팅해야함
			기본 포맷 css로
			사용자가 글을 적을 시 효과 -> script
			*/

			/* 기본세팅 */
			html,body { height:100%; border:0; }
			body,p,form,ol,ul,li,dl,dd,input,select,textarea,blockquote { margin:0; padding:0; }
			h1,h2,h3,h4,h5,h6 { margin:0; padding:0; }
			/* table { border:0; border-spacing:0; border-collapse:separate; border-collapse:collapse; } */
			table th { text-align:center; }
			th,td { word-break:break-all; }
			em,i { font-style:normal; }
			ul { list-style:none; }
			img { border:0; vertical-align:middle; }
			del { color:#bbb; }
			samp { font-family:'Nanum Gothic','Malgun Gothic'; }
			strong { font-weight:bold; }
			a { color:#888; text-decoration:none; }
			a:focus,a:active { outline:none; }

			/* common */
            .centered { position: relative; max-width:1300px !important; padding:0 !important;}
			.tleft { text-align: left !important; }
			.tright { text-align: right !important; }
			.tcenter { text-align: center !important; }

			body { background: #133786;}
			.cbt { min-width:1320px;}
			.lms_quick {width:100%; min-width:1300px; background: #333; border-top:3px solid #0082ff; margin-left:0; position: fixed; top: 0px; z-index: 100; box-sizing: border-box; display: flex; justify-content: center; }
            .lms_quick .titarea { min-width:1300px; width:1200px; height:80px; padding:0px 135px; background:#333; color:#fff; }
            .lms_quick .titarea * { font-family:'Malgun Gothic', dotum, applegothic, sans-serif; }
            .lms_quick .titarea .left { width:100%; text-align:left !important; padding-left:30px; display: flex; align-items: center; justify-content: center; position:relative; padding:0 15px 0 0; text-align:right; height: 80px;}
            .lms_quick .titarea .left img { vertical-align:top; margin-top:2px; }
            .lms_quick .titarea .left span { display:inline-block; margin-left:20px; text-align:left; font-size:21px; font-weight:bold; letter-spacing:-0.5px }
            .lms_quick .titarea .left span strong { display:inline-block; margin-left:6px; }
            /* .lms_quick .titarea .time_area { text-align: center; margin-left: 20px; width:100px;}
            .lms_quick .titarea .time_area a { display: inline-block; width: 40px; height: 42px; overflow: hidden; background: url(http://img.megalawyers.co.kr/2023/0711_cbt/icon_pause.png) 0 2px no-repeat;}
            .lms_quick .titarea .time_area a.on{ background-position-y: -40px;}
            .lms_quick .titarea .time_area p { margin:-2px 0; } */
            .lms_quick .titarea .review_area { text-align: center; margin-left: 20px;}

            .lms_quick .titarea .left { }
            .lms_quick .titarea .left dl { display:flex; align-items: center;  justify-content: center; width: 250px; height: 50px; margin-left: 20px; border:1px solid #fff; overflow:hidden; border-radius:5px; padding:0 10px; vertical-align:top; }
            .lms_quick .titarea .left dl dt,
            .lms_quick .titarea .left dl dd{ display:inline-block; color:#fff; margin-left:0;}
            .lms_quick .titarea .left dl dt { font-size:20px; line-height:37px; font-weight:bold; margin-right:2px; text-align:center; }
            .lms_quick .titarea .left dl dd { font-size:26px; color:#fff; line-height:37px; text-align:left; margin-left: 5px; }
            .lms_quick .titarea .left dl dd + dt{ margin-left:10px; }
            .lms_quick .titarea .last { width:170px; height:70px; text-align:center; }
            .lms_quick .titarea .last span { height:70px; display:block; background:#485486; color:#fff; font-size:18px; font-weight:bold; line-height:66px; }
            .lms_quick .txt { overflow:hidden; background:#f4fcff; box-sizing:border-box; padding:12px 40px 14px; border-bottom:1px solid #646464; }
            .lms_quick .txt li { font-size:12px; font-weight:bold; color:#f84f26; text-align:left; line-height:18px; }
            .lms_quick .txt li:before { content:'※'; display:inline-block; margin-right:8px; }

            .floBnrWrap { width:165px; top: 0px; right:50px; position: absolute; z-index: 20; }
			.floBnrWrap .floBnr { position: absolute; }
			.floBnrWrap .floBnr.fixed { top: 155px; position: fixed;}

			.floBnr ul { width:165px; display: flex; flex-wrap:wrap;  background: #fff; padding:10px 5px; box-sizing: border-box; position: relative; border-radius: 5px;}
			.floBnr ul li { width:50%; display: inline-block; text-align: center; }
			.floBnr ul li:nth-child(odd){ border-right:1px solid #ddd;}
			.floBnr ul li a { display: block; font-size: 13px; padding: 5px 0;}
			.floBnr ul li img { width:31%;}

			.floBnr ul #icon_box { display: none; width: 350px; position: absolute; top: 229px; left: -214px; z-index: 999; }
			.floBnr ul #icon_box .icon_box_inner { width: 350px; height: 200px; background: #fff; padding: 20px; border:1px solid #ddd; box-sizing: border-box;position: relative; z-index: 999; overflow-y:scroll;}
			.floBnr ul #icon_box .icon_box_inner h5 { padding:0 0 5px; border-bottom:1px solid #ddd; margin-bottom: 10px;} 
			.floBnr ul #icon_box .icon_box_inner section { display: inline-block; margin-left: 5px; }
			.floBnr ul #icon_box .icon_box_inner section a.letter { font-size: 15px; letter-spacing: 2px; padding: 4px 3px; display: inline-block; color:#333;}
			.floBnr ul #icon_box .icon_box_inner section a.letter:hover { outline:1px solid #0082ff; box-sizing: border-box;}
			.floBnr ul #icon_box .icon_popClose { position: absolute; right: 10px; top: 8px; }
			.floBnr .ly_dim { position: fixed; left: 0; top: 0; z-index: 990; width: 100%; height: 100%; }

			.button_default { display: inline-block; text-align: center; min-width:120px; padding: 5px 10px; background: #ddd; text-decoration: none; color:#333; font-weight: 500; letter-spacing: -0.5px;}
            .button_default.quit { background: #0082ff; color:#fff;}
            .editor_top_wrap { min-width:1300px; padding: 0 239px; box-sizing: border-box; margin:0 auto; position: relative; display: flex; justify-content: center; margin: 150px 0 30px; }
            .table_inner { background: #fff; width:100%; padding: 20px 40px; margin-left: 42px;}
            .editor_top { width: 100%; height: 70px; background-color: #2d3741; border:2px solid #133786; box-sizing: border-box; font-size: 13px;}
            .editor_top .left { width:160px; padding-left: 50px; }
            .editor_top .right { padding: 0 15px 0 0; text-align: center; }
            .editor_top .right dl { width: 100%; height: 37px; border: 1px solid #505a5f; overflow: hidden; }
            .editor_top .right dl dt { display:inline-block; float: left; background: #505a5f; padding: 0 40px; line-height: 37px; color: #fff; font-weight: bold; margin-right: 10px; }
            .editor_top .right dl dd { color: #fff; line-height: 37px; text-align: left; }
            .editor_top .btn { width:200px; height:70px; text-align: center; }
            .editor_top .btn .btn { width:200px; height:70px; display:block; background-color: #f85023; color:#fff; font-size:18px; font-weight:bold; line-height:65px; }
            .editor_top tr th { color:#133786; background: #fff; padding:10px 5px; border:1px solid #133786;}
            .editor_top tr td { color:#133786; text-align: center; background: #d1d1e8; padding:10px 5px; border:1px solid #133786;}
            .editor_top_wrap .exam_tit { padding:20px 0 0px; text-align: center; color:#133786; font-family: 'Nanum Gothic' !important; font-size: 30px; letter-spacing: -1px;}
            .editor_top_wrap .exam_tit strong { font-size: 41px; font-weight: bold;}

			.aside_line_count { width:23px; height: 100%; text-align: center; margin-top: 0.1%;  margin-right: 15px; display: flex; flex-direction: column; text-align: center;}
            .aside_line_count span { display: inline-block; font-size: 17px; height:28.8px; color:#fff; text-align: center; }

			.editor-container { min-width: 1300px !important;}
			.ck-editor__editable {
				font-family: "Courier New" !important;
				font-size: 18px !important;
				letter-spacing: 3px;
				line-height: 28.8px !important;
				background-attachment: scroll !important;
				background-image:
					linear-gradient(to right, white 10px, transparent 10px),
					linear-gradient(to left, white 10px, transparent 10px),
					repeating-linear-gradient(white, white 27.8px, #ccc 27.8px, #ccc 28.8px, white 28.8px) !important;
				padding: 1.65em 1em !important;
				padding: 1.65px 1em !important;
				overflow-y: hidden !important;
				word-break: break-all !important
			}

			.ck.ck-editor {width: 780px; overflow-y: hidden !important; z-index: 10;}
			.ck.ck-editor p { margin-block-start: 0; margin-block-end: 0; }

			/* .ck.ck-editor p { width: 100%; font-size: 25px !important; background: transparent;} */


			.ck.ck-editor__editable_inline>:first-child { margin-top: 0px; }

			.ck.ck-editor__editable_inline>:last-child { margin-bottom: 0px; }

			.ck-editor__editable_inline { min-height: 157px !important; }

			.ck-body-wrapper { display: none;}
			.count-wrap { min-width:165px !important; position: fixed; bottom:25px; left:calc(50% + 434px); background: #fff; border-radius: 5px; padding:10px;}
			.ck-word-count, #line-count { color:#333; }
			#count-warn { width:340px; color:#333; letter-spacing: -0.5px; display:none;}
			#count-warn.active { display: block;}
			#count-warn strong { text-decoration: underline; color:#0082ff;}
			.ck-word-count__words { display: none; }
		</style>

		<div class="lms_quick">
			<table class="titarea" cellspacing="0" cellpadding="0">
				<tr>
					<td class="left">
						 <span>CBT첨삭 답안 작성하기</span>
						 <dl class="time_blink active">
							<dt>남은시간:</dt>
							<dd>000:20 </dd>
						</dl>
						<!-- <div class="time_area">
							<a href="javascript:;" class="time_pause"></a>
							<p>시간 정지</p>
						</div> -->
					</td>
					<td class="right">
						<a href="javascript:;" class="button_default save">답안 임시저장 &gt;</a>
						<a href="javascript:;" class="button_default quit" onclick="$('#ly_quit').fadeIn();">시험 종료 &gt;</a>                    
					</td>
				</tr>
			</table>
		</div>
		<div class="centered">

			<div class="row editor_top_wrap">
                <div class="table_inner">
                    <table class="editor_top">
                        <colgroup>
                            <col width=";">
                            <col width="16%">
                            <col width="16%">
                        </colgroup>
                        <thead>
                            <tr>
                                <th>시험명</th>
                                <th>수험번호</th>
                                <th>이름</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="tleft">
                                    %강좌명%은최대30자강좌명은최대30자강좌명은최대30자정도<br>
									%과목명%은최대15자정도과목명은최대넘치면테이블늘어남늘어남
                                </td>
                                <td>아이디아이디아이디아아디</td>
                                <td>이름이름이름</td>
                            </tr>
                      </tbody>
                    </table>
                    <h2 class="exam_tit">
                        메가로이어스 변호사 시험 답안지 <strong>사례형</strong>
                        
                    </h2>
              </div>
            </div>

			<div class="row row-editor">
				<div class="floBnrWrap">
					<div class="floBnr">
						<ul>
							<li>
								<a href="javascript:;" id="redo" title="되돌리기">
									<div><img src="http://img.megalawyers.co.kr/2023/0711_cbt/icon_back.png" alt="되돌리기">
									</div>
									되돌리기
								</a>
							</li>
							<li>
								<a href="javascript:;" id="undo" title="실행취소">
									<div><img src="http://img.megalawyers.co.kr/2023/0711_cbt/icon_forwards.png"
											alt="실행취소"></div>
									실행취소
								</a>
							</li>
							<li>
								<a href="javascript:;" id="alignL" title="왼쪽정렬">
									<div><img src="http://img.megalawyers.co.kr/2023/0711_cbt/icon_align_left.png"
											alt="왼쪽정렬"></div>
									왼쪽정렬
								</a>
							</li>
							<li>
								<a href="javascript:;" id="alignR" title="오른쪽정렬">
									<div><img src="http://img.megalawyers.co.kr/2023/0711_cbt/icon_align_right.png"
											alt="오른쪽정렬"></div>
									오른쪽정렬
								</a>
							</li>

							<li>
								<a href="javascript:;" id="alignC" title="가운데정렬">
									<div><img src="http://img.megalawyers.co.kr/2023/0711_cbt/icon_align_center.png"
											alt="가운데정렬"></div>
									가운데정렬
								</a>
							</li>
							<li>
								<a href="javascript:;" id="alignJ" title="양쪽정렬">
									<div><img src="http://img.megalawyers.co.kr/2023/0711_cbt/icon_align_justify.png"
											alt="양쪽정렬"></div>
									양쪽정렬
								</a>
							</li>
							<li>
								<a href="javascript:;" title="특수문자"
									onclick="document.getElementById('icon_box').style.display='block'; return false;">
									<div><img src="http://img.megalawyers.co.kr/2023/0711_cbt/icon_type.png" alt="특수문자">
									</div>
									특수문자
								</a>
							</li>  
							<li> 
								<a href="javascript:;"  
									onclick="javascript:popupCenter('../../popup02.html', '860', '580'); " title="도움말">
									<div><img src="http://img.megalawyers.co.kr/2023/0711_cbt/icon_info.png" alt="도움말">
									</div>
									도움말
								</a>
							</li>

							<!-- 특수문자 레이어 -->
							<div id="icon_box">
								<div class="icon_box_inner">
									<h5>특수문자</h5>

									<div id="specialCharsLayer">
										<section>
											<a href="javascript:;" class="letter">Ⅰ</a>
											<a href="javascript:;" class="letter">Ⅱ</a>
											<a href="javascript:;" class="letter">Ⅲ</a>
											<a href="javascript:;" class="letter">Ⅳ</a>
											<a href="javascript:;" class="letter">Ⅴ</a>
										</section>

										<section>
											<a href="javascript:;" class="letter">1.</a>
											<a href="javascript:;" class="letter">2.</a>
											<a href="javascript:;" class="letter">3.</a>
											<a href="javascript:;" class="letter">4.</a>
											<a href="javascript:;" class="letter">5.</a>
										</section>

										<section>
											<a href="javascript:;" class="letter">1)</a>
											<a href="javascript:;" class="letter">2)</a>
											<a href="javascript:;" class="letter">3)</a>
											<a href="javascript:;" class="letter">4)</a>
											<a href="javascript:;" class="letter">5)</a>
										</section>

										<section>
											<a href="javascript:;" class="letter">(1)</a>
											<a href="javascript:;" class="letter">(2)</a>
											<a href="javascript:;" class="letter">(3)</a>
											<a href="javascript:;" class="letter">(4)</a>
											<a href="javascript:;" class="letter">(5)</a>
										</section>

										<section>
											<a href="javascript:;" class="letter">①</a>
											<a href="javascript:;" class="letter">②</a>
											<a href="javascript:;" class="letter">③</a>
											<a href="javascript:;" class="letter">~</a>
										</section>

										<section>
											<a href="javascript:;" class="letter">甲</a>
											<a href="javascript:;" class="letter">乙</a>
											<a href="javascript:;" class="letter">丙</a>
											<a href="javascript:;" class="letter">丁</a>
											<a href="javascript:;" class="letter">戊</a>
											<a href="javascript:;" class="letter">己</a>
											<a href="javascript:;" class="letter">判</a>
											<a href="javascript:;" class="letter">例</a>
											<a href="javascript:;" class="letter">中</a>
										</section>
									</div>

									<a href="javascript:;" class="icon_popClose"
										onclick="document.getElementById('icon_box').style.display='none'; return false;">
										<img src="http://img.megalawyers.co.kr/icon/btn_close_sb.png" alt="닫기">
									</a>
								</div>
								<span class="ly_dim"
									onclick="document.getElementById('icon_box').style.display='none'; return false;"></span>
							</div>
							<!-- /특수문자 레이어 -->

						</ul>
					</div>
				</div>
			</div>

			<div class="row row-editor">
                <div class="editor-container">
                    <!-- 좌측 줄 수 보여주기 -->
                    <div class="aside_line_count">
					</div>
                    <!--// 좌측 줄 수 보여주기 -->
                    <div class="editor" contenteditable="true"> </div>
                </div>
            </div>

			<div class="row row-editor">
				<div class="editor-container">
					<div class="editor">
					</div>
				</div>
			</div>

			<div class="count-wrap">
				<div id="word-count"></div>
				<div id="line-count"></div>
				<div id="page-count"></div>
				<div id="count-warn" class="">※ 총 입력줄수인 <strong>%132%</strong> 줄을 넘었습니다.<br> (분량 제출기준에 맞춰 작성 해 주시길 바랍니다.)</div>
			</div>

			<style>
				@import url('https://webfontworld.github.io/pretendard/Pretendard.css');
				.cbt .layerPop {display: none; position: fixed; left: 0; top: 0; width: 100%; height: 100%; z-index: 110; text-align: center;}
				.cbt .layerPop .popInner { position: relative; width: 800px; margin: 150px auto 0; z-index: 999; text-align: left;}
				.cbt .layerPop .exam_quit, .cbt .layerPop .exam_info{ margin-left: 18px; }
				
				.cbt .layerPop .txt_wrap { position: absolute; top: 427px; left: 226px; width:385px; display: flex; justify-content: space-around; align-items: center; font-family : 'pretendard' !important;}
				.cbt .layerPop .exam_info .txt_wrap  { position: absolute; top: 500px; left: 226px; width:385px; display: flex; justify-content: space-around; align-items: center; font-family : 'pretendard' !important;}
				.cbt .layerPop .txt_wrap label { font-size: 16px; color:#222; font-weight: 600;}
				.cbt .layerPop .txt_wrap input[type="checkbox"] { transform: scale(1.2); margin-right:5px; position: relative; top:1px;}
				.cbt .layerPop .txt_wrap span { font-size: 20px; color:#0082ff;}
				.cbt .layerPop .txt_wrap a { display: inline-block; padding: 3px 19px; font-size: 14px; background: #222; color:#fff; border-radius: 5px; text-decoration: none;}
	
				.cbt .layerPop .popInner2 { display: none; position: relative; width: 800px; margin: 150px auto 0; z-index: 999; text-align: left;}
				.cbt .layerPop .popInner2 .btn_wrap { position: absolute; top: 331px; left: 221px; width:385px; display: flex; justify-content: space-around; align-items: center; font-family : 'pretendard' !important;}
	
				.cbt .layerPop .btn_wrap { position: absolute; bottom: 40px; left: 236px; }
				.cbt .layerPop .btn_wrap .btn01 { display: inline-block; width: 160px; height: 56px; line-height: 56px; font-size: 20px; font-family : 'pretendard' !important; text-align: center; border-radius: 10px; font-weight: 600;}
				.cbt .layerPop .btn_wrap .btn01.btn_cx { background: #fff; color:#222; border:1px solid #bdbdbd; box-sizing: border-box;}
				.cbt .layerPop .btn_wrap .btn01.btn_confirm { background: #222; color:#fff; margin-left: 10px;}
				.cbt .layerPop .bt_popClose {  right: -6px; top: 9px; position: absolute; display: block; z-index: 1; text-align: left;}
	
				.cbt .layerPop .ly_dim { position: fixed; left: 0; top: 0; z-index: 990; width: 100%; height: 100%; background: rgba(0,0,0,.5); }
			</style>

			<!-- 확인사항 레이어팝업 : 페이지 진입시 -->
			<div class="layerPop" id="ly_info" style="display:block;">
				<div class="popInner">
					<div class="exam_info">
						<img src="http://img.megalawyers.co.kr/2023/0711_cbt/lyr_info01.png" alt="CBT 첨삭 확인사항" usemap="#lyr_info01">
						<map name="lyr_info01">
							<area shape="rect" coords="301,407,421,429" target="_blank" href="https://www.google.co.kr/chrome/?brand=IBEF&gclid=CjwKCAjwkeqkBhAnEiwA5U-uMyYGdytkF7EpKjmsPDncopfDMCMsyDp00gpXc-NUlDLbZby1exl0MxoCXTsQAvD_BwE&gclsrc=aw.ds" alt="크롬 다운로드">
							<area shape="rect" coords="428,407,548,429" target="_blank" href="https://www.microsoft.com/ko-kr/edge/download?form=MA13FJ " alt="엣지 다운로드">
							<area shape="rect" coords="552,407,671,429" target="_blank" href="https://whale.naver.com/ko/" alt="웨일 다운로드">
						</map>
	
						<div class="txt_wrap">
							<label><input type="checkbox"> 위 내용을 확인하였으며, 이에 동의합니다.</label>
						</div>
	
						<div class="btn_wrap" style="left:252px;">
							<a href="javascript:;" class="btn01 btn_cx" >취소</a>
							<a href="javascript:;" class="btn01 btn_confirm" onclick="$('#ly_info').fadeOut(100);">확인</a>
						</div>
					</div>
				</div>
				
				<span class="ly_dim"></span>
			</div>
			<!--// 확인사항 레이어팝업 : 페이지 진입시 -->

			<!-- 시험종료 레이어팝업 -->
			<div class="layerPop" id="ly_quit">
	
				<!-- 시험 종료 1단계 -->
				<div class="popInner">
					<div class="exam_quit">
						<img src="http://img.megalawyers.co.kr/2023/0711_cbt/lyr_quit01.png" alt="시험을 종료하시겠습니까?">
	
						<div class="txt_wrap">
							<label><input type="checkbox" checked> SMS 알림</label>
							<span>010-2507-6356</span>
							<a href="javascript:;">변경</a>
						</div>
	
						<div class="btn_wrap">
							<a href="javascript:;" class="btn01 btn_cx" onclick="$(this).parent().parent().parent().parent().fadeOut(100);">취소</a>
							<a href="javascript:;" class="btn01 btn_confirm">확인</a>
						</div>
					</div>
	
					<a href="javascript:;" class="bt_popClose" onclick="$(this).parent().parent().fadeOut(100);">
					   <img src="http://img.megalawyers.co.kr/icon/btn_close.png" alt="닫기">   
				   </a>
	
				</div>
	
				<!-- 시험 종료 2단계 -->
				<div class="popInner2">
					<div class="exam_quit">
						<img src="http://img.megalawyers.co.kr/2023/0711_cbt/lyr_quit02.png" alt="시험이 종료되었습니다.">
	
						<div class="btn_wrap">
							<a href="javascript:;" class="btn01 btn_confirm">확인</a>
						</div>
					</div>
				</div>
				
				<span class="ly_dim"></span>
			</div>
			<!--// 시험종료 레이어팝업 -->
			
		</div>
		</main>
		<script src="/editor/build/ckeditor.js" charset="utf-8"></script>
		<script src="https://cdn.ckeditor.com/ckeditor5/34.0.0/classic/translations/ko.js"></script>

		<script>

			$(document).ready(function () {
				// 우측 툴바 고정 플로팅배너
				var containerTop = $('.editor-container').offset().top - 155;
				$(window).scroll(function () {
					if ($(window).scrollTop() >= containerTop) {
						$('.floBnr').addClass('fixed');
					}
					else {
						$('.floBnr').removeClass('fixed');
					}
				});

				// 좌측 행 카운트
				for (let i = 1; i < 329; i++) {
					$('.aside_line_count').append('<span>' + i + '</span>');
				}

				// 레이어팝업 버튼 
				$('#ly_quit .btn_confirm').on('click', function () {
					$('.popInner2').fadeIn(0);
					$('.popInner').fadeOut(0);
				})

				$("#line-count").text(function(index, oldText) {
					return oldText + " / 123줄";
				});

				$("#page-count").text(function(index, oldText) {
					return oldText + " / 4쪽";
				});

				// 시간 재생,정지 버튼
				// $('.time_pause').on('click', function () {
				// 	$('.time_pause').toggleClass('on')

				// 	if ($('.time_pause').hasClass('on')) {
				// 		$('.time_area p').text('시간 재생')
				// 	} else {
				// 		$('.time_area p').text('시간 정지')
				// 	}
				// });

				var text = $("#line-count").text();
				var words = text.split(" ");
				var thirdWord = words[3];

				$("#line-count, #page-count").html(function() {
					return $(this).text().replace(thirdWord, "<span style='color: #0082ff;'>" + thirdWord + "</span>");
				});

			})

			function popupCenter(href, w, h) {
				var xPos = (document.body.offsetWidth/2) - (w/2); // 가운데 정렬
				xPos += window.screenLeft; // 듀얼 모니터일 때
				var yPos = (document.body.offsetHeight/2) - (h/2);

				window.open(href, "pop_name", "width="+w+", '_blank' height="+h+", left="+xPos+", top="+yPos+", menubar=yes, status=yes, titlebar=yes, resizable=yes");
			}

			ClassicEditor
				.create(document.querySelector('.editor'), {
					licenseKey: '',
					alignment: {
						options: ['left', 'right', 'center', 'justify']
					}
				})
				.then(editor => {
					//editor.enableReadOnlyMode("editor");
					//전체 세팅될 높이 값
					var fullHeight = 0;

					//전체 세팅될 행 갯수
					var lineCnt = 328;

					var thisLineCnt = 1;

					//1개 라인당 높이 값
					var perLineHeight = $(".ck .ck-content p:eq(0)").height() ? $(".ck .ck-content p:eq(0)").height() : 0;

					//여백 값들 가져오기
					var spaceObj;
					var space = 0;

					spaceObj = document.querySelector(".ck-editor__editable");
					space += parseFloat(window.getComputedStyle(spaceObj).getPropertyValue("padding").replace(/px/gi, ""));
					space += parseFloat(window.getComputedStyle(spaceObj).getPropertyValue("border-width").replace(/px/gi, ""));
					space = space * 2;

					fullHeight = perLineHeight * lineCnt + space;

					editor.focus();

					// const wordCountPlugin = editor.plugins.get('WordCount');
					// const wordCountWrapper = document.getElementById('word-count');
					// wordCountWrapper.appendChild(wordCountPlugin.wordCountContainer);

					$("#line-count").html("줄 수 : " + updateLineCount(editor));
					$("#page-count").html("쪽 수 : " + updateLineCount(editor));

					//에디터 자체가 변경 될시
					editor.editing.view.change(writer => {
						writer.setStyle("height", fullHeight + "px", editor.editing.view.document.getRoot());
					});

					//에디터 keydown 이벤트
					editor.editing.view.document.on('keydown', (evt, data) => {
						if (data.keyCode == 25) {
							data.preventDefault();
							evt.stop();
						}
					});

					//에디터 데이터 변경시 이벤트
					editor.model.document.on('change:data', () => {
						setTimeout(function () {
							thisLineCnt = updateLineCount(editor)
							

							$("#line-count").html("줄 수 : " + thisLineCnt);

							$("#line-count").text(function(index, oldText) {
								return oldText + " / 123줄";
							});

							var text = $("#line-count").text();
							var words = text.split(" ");
							var thirdWord = words[3];

							$("#line-count").html(function() {
							return $(this).text().replace(thirdWord, "<span style='color: #0082ff;'>" + thirdWord + "</span>");
							});


							if (thisLineCnt > 132) {
								$('#count-warn').addClass('active')
							} else {
								$('#count-warn').removeClass('active')
							}
							
						}, 0);

					});

					const undo = document.querySelector("#undo");
					undo.addEventListener('click', () => {
						editor.execute('undo');
						editor.focus();
					});

					const redo = document.querySelector("#redo");
					redo.addEventListener('click', () => {
						editor.execute('redo');
						editor.focus();
					});

					const alignL = document.querySelector('#alignL');
					alignL.addEventListener('click', () => {
						editor.execute('alignment', { value: 'left' })
						editor.focus();
					});

					const alignR = document.querySelector('#alignR');
					alignR.addEventListener('click', () => {
						editor.execute('alignment', { value: 'right' })
						editor.focus();
					});

					const alignC = document.querySelector('#alignC');
					alignC.addEventListener('click', () => {
						editor.execute('alignment', { value: 'center' })
						editor.focus();
					});

					const alignJ = document.querySelector('#alignJ');
					alignJ.addEventListener('click', () => {
						editor.execute('alignment', { value: 'justify' })
						editor.focus();
					});

					const special = document.querySelector('#specialCharsLayer');
					const specialEach = document.querySelectorAll('.letter');
					special.addEventListener('click', e => {
						const targetEl = e.target

						if (!targetEl.classList.contains('letter')) {
							return
						}
						else {
							editor.model.change(writer => {
								const insertPosition = editor.model.document.selection.getFirstPosition();

								if (editor.getData() == "") {
									// 클릭한 특수 문자 가져오기
									var specialChar = targetEl.textContent;
									writer.insertText(specialChar, insertPosition);
									writer.setSelection(writer.createPositionAt(editor.model.document.getRoot(), 'end'));
								}
								else {
									// 클릭한 특수 문자 가져오기
									var specialChar = targetEl.textContent;
									writer.insertText(specialChar, insertPosition);
								}
							});
							editor.focus();
						}
					});

					const tmpSave = document.querySelector('#tmpSave');
					tmpSave.addEventListener('click', () => {
						let val = editor.getData();
						val = val.replace(/<p\b[^>]*>(?:\s*&nbsp;\s*)?<\/p>/gi, '<p><br></p>');
						document.testFrm.testData.value = val;
						document.testFrm.testLine.value = $("#line-count span").text();
						document.testFrm.submit();
					});

					function updateLineCount(editor) {
						let lineHeight = 0;
						let lineCnt = 0;
						

						$(".ck .ck-content p").each(function () {
							lineHeight += $(this).height();
						})

						lineCnt = lineHeight / perLineHeight;
						return Math.round(lineCnt);
					}

					function isSpecialCharacterKey(keyCode) {
						return keyCode >= 48 && keyCode <= 57 || // 숫자 키
							keyCode >= 186 && keyCode <= 192 || // ;=,-./` 키
							keyCode >= 219 && keyCode <= 222; // [\]'" 키
					}

					function isChineseCharacterKey(keyCode) {
						return keyCode === 229; // 한자키 키 코드
					}
				})
				.catch(error => {
					console.error('Oops, something went wrong!');
					console.error('Please, report the following error on https://github.com/ckeditor/ckeditor5/issues with the build id and the error stack trace:');
					console.warn('Build id: npntvpvbyzns-4egbblrlmcuo');
					console.error(error);
				});
		</script>

</body>

</html>