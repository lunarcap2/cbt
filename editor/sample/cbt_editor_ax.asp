<%
	Session.CodePage  = "949"
	Response.CharSet  = "EUC-KR"
	Response.AddHeader "Pragma", "no-cache"
	Response.CacheControl = "no-cache"
	Response.Expires = -1442
	Const MetaCharset = "euc-kr"
%>
<%
'=======================================================================
'업 무 명   : 메가로이어스-CBT 메인페이지
'모듈기능	: CBT Editor 저장
'파 일 명	: cbt_editor_ax.asp
'작성일자	: 2023-07-11
'작 성 자	: 송찬호
'-----------------------------------------------------------------------
'변경일자   변경자  변동내역
'=======================================================================
'
'=======================================================================
'Response.Expires = -1
%>
<% '공통 인클루드 페이지 시작 %>
<!-- #include virtual = "/common/inc/RSexec.asp" -->
<!-- #include virtual = "/common/inc/VarDef.asp"-->
<!-- #include virtual = "/common/inc/FunDef.asp"-->
<% '공통 인클루드 페이지 종료 %>

<%
    masNo = fncRequest("masNo")
    appSeq = fncRequest("appSeq")
    data = fncRequest("data")
    idx = fncRequest("idx")
    cnt = fncRequest("cnt")
    done = Trim(fncRequest("done"))
    tm = Trim(fncRequest("tm"))

    bPay = False
    bAlter = True

    save = "N"

    If tm = "0" Then
        save = "Y"
    End If

    strSQL = ""
	strSQL = strSQL & " SELECT	COUNT(1) "
	strSQL = strSQL & " FROM	dbo.MS_STD_APP WITH ( NOLOCK ) "
	strSQL = strSQL & " 		JOIN dbo.MS_APP_DTL WITH ( NOLOCK ) ON AD_APP_NO = SA_APP_NO "
	strSQL = strSQL & " 											   AND AD_APP_SEQ = "& appSeq &" "
	strSQL = strSQL & " 		JOIN dbo.MS_CHR_DTL WITH ( NOLOCK ) ON CD_CHR_CD = AD_CHR_CD "
	strSQL = strSQL & " 											   AND CD_NONSUL_TEC_KBN = 'Y' "
	strSQL = strSQL & " WHERE	AD_STD_STAT != '4' "
	strSQL = strSQL & " 		AND SA_MEM_ID = '"& cook_id &"' "

    Set rsPay = DBExec(strSQL, "study")
    
    If Not rsPay.EOF Then
        If rsPay(0) > 0 Then bPay = True
    End If
    
    Call RsClose(rsPay)

    If Not bPay Then
        response.write "FALSE"
        response.end
    End If

    strSQL = ""
    strSQL = strSQL & " SELECT	COUNT(1) "
    strSQL = strSQL & " FROM	dbo.MS_CORR_DATA WITH ( NOLOCK ) "
    strSQL = strSQL & " WHERE	CD_MAS_NO = "& masNo &" "
    strSQL = strSQL & " 		AND CD_APP_SEQ = "& appSeq &" "
    strSQL = strSQL & " 		AND CD_MEM_ID = '"& cook_id &"' "
    strSQL = strSQL & "         AND (( CD_SAVE = 'Y' AND CD_FLG = 1 ) "
    strSQL = strSQL & "              OR CD_FLG = 0 ) "

    Set rsAlter = DBExec(strSQL, "study")
    
    If Not rsAlter.EOF Then
        If rsAlter(0) > 0 Then bAlter = False
    End If
    
    Call RsClose(rsAlter)

    If Not bAlter Then
        response.write "FALSE"
        response.end
    End If
    
    ' 세그먼트 처리 로직 호출
    ProcessSegment data, idx, cnt
    
    ' 세그먼트를 받아 처리하고 결과를 저장할 배열
    'Dim processedSegments()
    'ReDim processedSegments(0)

    ' 세그먼트 처리 로직 구현
    Sub ProcessSegment(segmentData, segmentIndex, segmentCount)
        ' 예시로 각 세그먼트를 대문자로 변환하여 배열에 저장
        'processedSegments(segmentIndex) = segmentData
        
        strSQL = ""
        strSQL = strSQL & " MERGE INTO dbo.MS_CORR_DATA AS A "
        strSQL = strSQL & " USING "
        strSQL = strSQL & "     ( SELECT 1 AS DUAL ) AS B "
        strSQL = strSQL & " ON ( A.CD_MAS_NO = "& masNo &" "
        strSQL = strSQL & "      AND A.CD_APP_SEQ = "& appSeq &" "
        strSQL = strSQL & "      AND A.CD_MEM_ID = '"& cook_id &"' "
        strSQL = strSQL & " ) "
        strSQL = strSQL & " WHEN MATCHED THEN "
        strSQL = strSQL & "     UPDATE SET A.CD_TXT = A.CD_TXT + '"& Replace(segmentData, "'", "''") &"' , "
        strSQL = strSQL & "                A.CD_TMP_TM = "& tm &" , "
        strSQL = strSQL & "                A.CD_SAVE = '"& save &"' , "
        strSQL = strSQL & "                A.CD_REG_DT = GETDATE() "
        strSQL = strSQL & " WHEN NOT MATCHED THEN "
        strSQL = strSQL & "     INSERT ( CD_MAS_NO , "
        strSQL = strSQL & "              CD_APP_SEQ , "
        strSQL = strSQL & "              CD_MEM_ID , "
        strSQL = strSQL & "              CD_FLG , "
        strSQL = strSQL & "              CD_STAT , "
        strSQL = strSQL & "              CD_FILE , "
        strSQL = strSQL & "              CD_TXT , "
        strSQL = strSQL & "              CD_TMP_TM , "
        strSQL = strSQL & "              CD_SAVE , "
        strSQL = strSQL & "              CD_REG_DT "
        strSQL = strSQL & "         ) "
        strSQL = strSQL & "     VALUES ( "& masNo &" , "
        strSQL = strSQL & "             "& appSeq &" , "
        strSQL = strSQL & "             '"& cook_id &"' , "
        strSQL = strSQL & "             1 , "
        strSQL = strSQL & "             0 , "
        strSQL = strSQL & "             '' , "
        strSQL = strSQL & "             '"& Replace(segmentData, "'", "''") &"' , "
        strSQL = strSQL & "             "& tm &" , "
        strSQL = strSQL & "             '"& save &"' , "
        strSQL = strSQL & "             GETDATE() "
        strSQL = strSQL & "         ); "
        
        Call DBExec(strSQL, "study")

        Response.write "TRUE"
        ' 모든 세그먼트 처리가 완료되었을 때, 처리된 세그먼트를 하나의 문자열로 합치기
        'Dim mergedData
        'If segmentIndex = segmentCount - 1 Then
        '    ' 마지막 세그먼트인 경우 최종 결과 생성
        '    Dim i
        '    For i = 0 To segmentCount - 1
        '        mergedData = mergedData & processedSegments(i)
        '    Next
        '    
        '    ' 최종 결과 출력
        '    Response.Write "Processed Data: " & mergedData
        'End If
    End Sub


%>