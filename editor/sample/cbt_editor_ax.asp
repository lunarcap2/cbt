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
'�� �� ��   : �ް����̾-CBT ����������
'�����	: CBT Editor ����
'�� �� ��	: cbt_editor_ax.asp
'�ۼ�����	: 2023-07-11
'�� �� ��	: ����ȣ
'-----------------------------------------------------------------------
'��������   ������  ��������
'=======================================================================
'
'=======================================================================
'Response.Expires = -1
%>
<% '���� ��Ŭ��� ������ ���� %>
<!-- #include virtual = "/common/inc/RSexec.asp" -->
<!-- #include virtual = "/common/inc/VarDef.asp"-->
<!-- #include virtual = "/common/inc/FunDef.asp"-->
<% '���� ��Ŭ��� ������ ���� %>

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
    
    ' ���׸�Ʈ ó�� ���� ȣ��
    ProcessSegment data, idx, cnt
    
    ' ���׸�Ʈ�� �޾� ó���ϰ� ����� ������ �迭
    'Dim processedSegments()
    'ReDim processedSegments(0)

    ' ���׸�Ʈ ó�� ���� ����
    Sub ProcessSegment(segmentData, segmentIndex, segmentCount)
        ' ���÷� �� ���׸�Ʈ�� �빮�ڷ� ��ȯ�Ͽ� �迭�� ����
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
        ' ��� ���׸�Ʈ ó���� �Ϸ�Ǿ��� ��, ó���� ���׸�Ʈ�� �ϳ��� ���ڿ��� ��ġ��
        'Dim mergedData
        'If segmentIndex = segmentCount - 1 Then
        '    ' ������ ���׸�Ʈ�� ��� ���� ��� ����
        '    Dim i
        '    For i = 0 To segmentCount - 1
        '        mergedData = mergedData & processedSegments(i)
        '    Next
        '    
        '    ' ���� ��� ���
        '    Response.Write "Processed Data: " & mergedData
        'End If
    End Sub


%>