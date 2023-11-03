
<%
    testLine = 227
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-eqiv="Content-Type" content="text/html" charset="euc-kr" />
        <meta name="viewport" content="width=1300, maximum-scale=1.5" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <title>�ް����̾ :: Lawyers for Lawyers</title>
        <script type="text/javascript" src="https://img.megalawyers.co.kr/common/js/jquery-1.11.1.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/es6-promise/4.1.1/es6-promise.auto.js"></script>
        <script src="https://html2canvas.hertzen.com/dist/html2canvas.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.4/jspdf.min.js"></script>
        <!-- �߰��� -->
        <!-- <link rel="stylesheet" type="text/css" href="leet.css" /> -->
        <style type="text/css">
            /* �⺻���� */
            * {
                box-sizing: border-box;
            }
            html,
            body {
                height: 100%;
                border: 0;
                color: #888;
                width: 820px;
            }
            body,
            p,
            form,
            ol,
            ul,
            li,
            dl,
            dd,
            input,
            select,
            textarea,
            blockquote {
                margin: 0;
                padding: 0;
            }
            h1,
            h2,
            h3,
            h4,
            h5,
            h6 {
                margin: 0;
                padding: 0;
            }
            caption {
                position: absolute;
                top: -5000px;
                left: 0;
                font: 0/0 Dotum;
            }
            table {
                border: 0;
                border-spacing: 0;
                border-collapse: separate;
                border-collapse: collapse;
            }
            table th {
                text-align: center;
            }
            th,
            td {
                word-break: break-all;
            }
            em,
            i {
                font-style: normal;
            }
            ul {
                list-style: none;
            }
            img {
                border: 0;
                vertical-align: middle;
            }
            del {
                color: #bbb;
            }
            samp {
                font-family: "Nanum Gothic", "Malgun Gothic";
            }
            strong {
                font-weight: bold;
            }
            a {
                color: #888;
                text-decoration: none;
            }
            a:focus,
            a:active {
                outline: none;
            }
            a:hover {
                color: #e12c22;
            }
            .p0 {
                padding: 0 !important;
            }
            .pt0 {
                padding-top: 0 !important;
            }
            .pb0 {
                padding-bottom: 0px !important;
            }
            .w790 {
                width: 790px;
                margin: 0 auto;
            }
            .fleft {
                float: left;
            }
            .fright {
                float: right;
            }
            .fclear {
                clear: both;
                height: 0;
            }
            .fgroup:after {
                content: " ";
                display: block;
                clear: both;
            }
            .m0 {
                margin: 0 !important;
            }
            .mt0 {
                margin-top: 0 !important;
            }
            .mb0 {
                margin-bottom: 0px !important;
            }
            .mt5 {
                margin-top: 5px !important;
            }
            .mb5 {
                margin-bottom: 5px !important;
            }
            .mt10 {
                margin-top: 10px !important;
            }
            .mb10 {
                margin-bottom: 10px !important;
            }
            .mt15 {
                margin-top: 15px !important;
            }
            .mb15 {
                margin-bottom: 15px !important;
            }
            .mt20 {
                margin-top: 20px !important;
            }
            .mb20 {
                margin-bottom: 20px !important;
            }
            .mt25 {
                margin-top: 25px !important;
            }
            .mb25 {
                margin-bottom: 25px !important;
            }
            .mt30 {
                margin-top: 30px !important;
            }
            .mb30 {
                margin-bottom: 30px !important;
            }
            .bt0 {
                border-top: 0 !important;
            }
            .bb0 {
                border-bottom: 0 !important;
            }
            .bl0 {
                border-left: 0 !important;
            }
            .br0 {
                border-right: 0 !important;
            }
            .tit20 {
                position: relative;
                margin-top: 50px;
                padding: 20px 0 15px;
                color: #000;
                font: bold 20px/1em "Nanum Gothic";
                letter-spacing: -1px;
            }
            .tit20 em {
                position: absolute;
                right: 0;
                bottom: 15px;
            }
            .tit20 span {
                color: #d50c0c;
            }
            .tleft {
                text-align: left !important;
            }
            .tright {
                text-align: right !important;
            }
            .tcenter {
                text-align: center !important;
            }
            .tjustify {
                text-align: justify !important;
            }
            .bcenter {
                margin-left: auto;
                margin-right: auto;
            }

            /* �˾� ���̾ƿ� */
            #wrap_forPopup1 {
                height: 100%;
                background: #fff;
            }
            #wrap_forPopup1 #body {
                padding: 0 20px 20px;
            }
            #wrap_forPopup1 #body .tit30 + .tit16 {
                margin-top: 0;
            }
            #wrap_forPopup1 .leet_tb {
                border-top: 1px solid #333;
            }

            /*//////////////// ����Ʈ //////////// */
            @media print {
                * {
                    -webkit-print-color-adjust: exact;
                    print-color-adjust: exact;
                    box-sizing: border-box;
                    -moz-box-sizing: border-box;
                }
                html,
                body {
                    padding: 0;
                }

                /* .page { margin: 0; border: initial; width: initial; min-height: initial; box-shadow: initial; background: initial; page-break-after: always;} */

                #wrap_pop1 .tbl_type10 th {
                    background: #f5f5f5;
                    border-bottom: 1px solid #ddd !important;
                }
                .subpage {
                    background: #fff;
                    height: 257mm;
                }
                .btn34a {
                    display: none;
                }
                .page-break {
                    page-break-inside: avoid;
                    page-break-after: auto;
                }

                @page: first {
                    margin: 0px 0px;
                    size: A4;
                }

                @page {
                    margin: 0px 0px;
                    size: A4;
                }

                .print_btn_wrap {
                    display: none;
                }
            }
            /*///////////////// ����Ʈ ////////////////*/
            #pageWrap { display:block; }
            #viewWrap { display:none; }

            .tit_hidden {
                visibility: hidden;
                margin-top: 30px;
            }

            .page_container2 {
                margin-top: 0px;
                page-break-after: auto;
                padding-top: 1px;
            }

            .aside_line_count {
                width: 23px;
                height: 100%;
                text-align: center;
                margin-top: 54px;
                margin-right: 15px;
                display: flex;
                flex-direction: column;
                text-align: center;
                float: left;
            }
            .aside_line_count span {
                display: inline-block;
                font-size: 17px;
                height: 27.38px;
                color: #333;
                text-align: center;
            }

            .page_container2 .aside_line_count {
                margin-top: 0;
            }

            .button_default {
                display: inline-block;
                text-align: center;
                min-width: 120px;
                padding: 5px 10px;
                background: #ddd;
                text-decoration: none;
                color: #333;
                font-weight: 500;
                letter-spacing: -0.5px;
            }
            .button_default.quit {
                background: #0082ff;
                color: #fff;
            }
            .print_btn_wrap {
                text-align: right;
                margin: 10px 0 30px;
            }

            body.pop_body {
                box-sizing: border-box;
            }
            #wrap_forPopup1 {
                height: 100%;
            }
            #wrap_forPopup1 #body {
                padding: 0 30px 20px;
                position: relative;
            }
            .tit20 {
                padding: 20px 0 30px 40px;
            }
            .exam_tit {
                color: #333;
                font-size: 25px;
                padding-bottom: 20px;
            }
            .ck-editor__editable {
                font-family: "Courier New" !important;
                font-size: 16.5px !important;
                letter-spacing: 3px;
                line-height: 1.66 !important;
                background-attachment: scroll !important;
                background-color: #fff;
                /* background-image:
                linear-gradient(to right, white 10px, transparent 10px),
                linear-gradient(to left, white 10px, transparent 10px),
                repeating-linear-gradient(white, white 27.8px, #ccc 27.8px, #ccc 28.8px, white 28.8px) !important; */
                padding: 0em 1em !important;
                background-image: linear-gradient(#eee 0.1em, transparent 0.1em) !important;
                background-size: 100% 1.66em !important ;
                background-position: 0 -2px !important;
                overflow-y: hidden !important;
                word-break: break-all;
            }

            .page_container {
                position: relative;
            }

            #hiddenWrap { display:table; visibility: hidden; }

            #load { width: 100%; height: 100%; top: 0;left: 0; position: fixed; display: none; opacity: 0.8; background: white; z-index: 99; text-align: center;}
            #load > img { position: absolute; top: 50%; left: 50%; z-index: 100; }
        </style>
    </head>
    <body class="pop_body page">
        <div id="wrap_forPopup1">
            <!-- <h1 class="tit17">����ǥ ���</h1> -->

            <!-- BODY -->
            <div id="body" class="subpage">
                <div id="load">
                    <img src="http://img.megalawyers.co.kr/2023/0711_cbt/loading.gif" alt="loading">
                </div>
                <div class="tit_wrap mt30">
                    <h2 class="tit20 mt0 pt0 f18">����*(iris4095)_2023-07-15_CBT �������</h2>
                    <div class="print_btn_wrap">
                        <a href="javascript:;" class="button_default quit" onclick="fnPrint();">�μ��ϱ�</a>
                        <a href="javascript:self.close();" class="button_default save">�ݱ�</a>
                    </div>
                </div>

                <div id="pageWrap" class="page_container">
                    <div class="aside_line_count"></div>

                    <h3 class="exam_tit mt20 tcenter">�ް����̾ ��ȣ����� ����� �����</h3>

                    <div id="pageObj" class="page ck-editor__editable page-break" style="background: #fff; border: 1px solid #ddd">
                        <p style="text-align: right;">
                            �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                            ����p�±׿���35�ڰ��Ѿ�鶳������35�ڰ��Ѿ�鶳
                        </p>
                        <p>1. �̻����� ���� �۾��� ��ȸ�� ���Ͽ� ������������������ [22] �׵��� �� �𸥴�. �̰� �󸶳� ���������. 2�� 3�� 7���� ���ϸ� �׷���.</p>
                        <p>�ȳ��ϼ�������div����ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���<p><br data-cke-filler="true"></p><p>�ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        1�������� 1�������� 1�������� 1��������</p>
                        <p style="text-align: right;">
                            �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                            ����p�±׿���35�ڰ��Ѿ�鶳������35�ڰ��Ѿ�鶳
                        </p>
                        <p>�ȳ��ϼ�������div����ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���<p><br data-cke-filler="true"></p><p>�ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        1�������� 1�������� 1�������� 1��������</p>
                        <p style="text-align: right;">
                            �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                            ����p�±׿���35�ڰ��Ѿ�鶳������35�ڰ��Ѿ�鶳
                        </p>
                        <p>�ȳ��ϼ�������div����ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���<p><br data-cke-filler="true"></p><p>�ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                            �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                            �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                            �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                            �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                            1�������� 1�������� 1�������� 1��������</p>
                        <p style="text-align: right;">
                            �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                            ����p�±׿���35�ڰ��Ѿ�鶳������35�ڰ��Ѿ�鶳
                        </p>
                        <p>�ȳ��ϼ�������div����ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���<p><br data-cke-filler="true"></p><p>�ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                            �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                            �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                            �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                            �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                            1�������� 1�������� 1�������� 1��������</p>
                        <p style="text-align: right;">
                            �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                            ����p�±׿���35�ڰ��Ѿ�鶳������35�ڰ��Ѿ�鶳
                        </p>
                        <p>�ȳ��ϼ�������div����ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���<p><br data-cke-filler="true"></p><p>�ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                            �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                            �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                            �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                            �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                            1�������� 1�������� 1�������� 1��������</p>
                        <p style="text-align: right;">
                            �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                            ����p�±׿���35�ڰ��Ѿ�鶳������35�ڰ��Ѿ�鶳
                        </p>
                        <p>�ȳ��ϼ�������div����ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���<p><br data-cke-filler="true"></p><p>�ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                            �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                            �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                            �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                            �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                            1�������� 1�������� 1�������� 1��������</p>
                        <p style="text-align: right;">
                            �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                            ����p�±׿���35�ڰ��Ѿ�鶳������35�ڰ��Ѿ�鶳
                        </p>
                        <p>�ȳ��ϼ�������div����ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                        �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���<p><br data-cke-filler="true"></p><p>�ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                            �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                            �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                            �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                            �ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���
                            1�������� 1�������� 1�������� 1��������</p>
                    </div>
                </div>

                <div id="hiddenWrap" class="page_container no-scroll">
                    <div class="aside_line_count"></div>
                    <div id="hiddenObj" class="page ck-editor__editable page-break" style="background: #fff; border: 1px solid #ddd;">
                    </div>
                </div>

                

                <div id="viewWrap">

                </div>

                <!--// 1. �� ���� �Ѵ��� ���� -->
            </div>
            <!--// BODY -->
        </div>
        <!--// id=wrap_forPopup1 -->
    </body>

    <script>
        $(document).ready(function () {
            for (let i = 0; i < <%=testLine%>; i++) {
                $("#pageWrap .aside_line_count").append(`<span>${i + 1}</span>`);
            }

            /*
            const windowHeight = window.innerHeight;
            const noScrollDiv = document.querySelector('.no-scroll');
            const noScrollDivOffsetTop = noScrollDiv.offsetTop;
            const noScrollDivHeight = noScrollDiv.offsetHeight;

            $(window).scroll(function(){
                if( $(window).scrollTop() + windowHeight >= noScrollDivOffsetTop + noScrollDivHeight ){
                    window.scrollTo(0, noScrollDivOffsetTop + noScrollDivHeight - windowHeight);
                }
                else{
                }
            });
            */
        });


        function fnPrint() {
            const str = $("#pageWrap").html();
            let obj = $("#hiddenObj");
            $(obj).html(str);

            let arrP = document.querySelectorAll("#hiddenObj p");
            let arrPLen = arrP.length;

            $(obj).html("");

            let strHtml = "";

            for (let i = 0; i < arrPLen; i++) {
                const objP = arrP[i];
                let strP = objP.outerHTML;

                //strP = strP.replace(/<br\s*\/?>/gi, "[br]");
                //strP = strP.replace(/<p\b[^>]*>(?:\s*&nbsp;\s*)?<\/p>/gi, '<br>');

                const strStart = strP.match(/<p\b[^>]*>/i);
                const strEnd = strP.match(/<\/p>/i);
                //const strText = strP.replace(/<p\b[^>]*>/g, "").replace(/<\/p>/g, "").replace(/\[br\]/g, '<br data-cke-filler="true">');
                const strText = strP.replace(/<p\b[^>]*>/g, "").replace(/<\/p>/g, "");

                const arrStr = [...strText];
                const arrLen = arrStr.length;

                let strSet = "";
                let bClose = false;

                $(obj).html("");

                strSet += strStart;

                for (let j = 0; j < arrLen; j++) {
                    strSet += arrStr[j];

                    $(obj).html(strSet);

                    const pageWidth = $("#hiddenObj").width();

                    if (pageWidth >= 687) {
                        bClose = true;
                        j--;
                        const strLen = strSet.length - 1;
                        strSet = strSet.substring(0, strLen);
                    }
                    else {
                        bClose = false;
                    }

                    if (bClose) {
                        strSet += "</p>";
                        strHtml += strSet;

                        strSet = "";
                        $(obj).html("");

                        strSet += strStart;
                    }
                }

                strSet += strEnd;
                strHtml += strSet;
            }

            $(obj).html(strHtml);

            arrP = document.querySelectorAll("#hiddenObj p");
            arrPLen = arrP.length;

            if (arrPLen % 34 != 0) {
                const modLen = 34 - (arrPLen % 34);

                for (let i = 0; i < modLen; i++) {
                    $(obj).append("<p><br></p>");
                }
            }

            arrP = document.querySelectorAll("#hiddenObj p");
            arrPLen = arrP.length;

            let parentTagStart =    `<div class="page_container">
                                    <div class="aside_line_count"></div>
                                    <h3 class="exam_tit mt20 tcenter">�ް����̾ ��ȣ����� ����� �����</h3>
                                    <div class="page ck-editor__editable page-break" style="background:#fff; border:1px solid #ddd">`;

            let parentTagStart2 =   `<div class="page_container page_container2">
                                    <div class="tit_wrap tit_hidden">
                                    <h2 class="tit20 mt0 pt0 f18">����*(iris4095)_2023-07-15_CBT �������</h2>
                                    </div>
                                    <div class="aside_line_count"></div>
                                    <div class="page page2 ck-editor__editable page-break" style="background:#fff; border:1px solid #ddd; margin-bottom: 100px;">`;
                                                
            const parentTagEnd = "</div></div>";

            let pTagArr = [];
            let pTagGrp = [];

            for (let i = 0; i < arrPLen; i++) {
                const objP = arrP[i];
                let strP = objP.outerHTML;

                //strP = strP.replace(/\[br\]/g, '<br data-cke-filler="true">');
                //strP = strP.replace(/<p\b[^>]*>(?:\s*&nbsp;\s*)?<\/p>/gi, '<br>');

                //console.log(strP);
                
                pTagGrp.push(strP);

                if (pTagGrp.length == 34 || i === arrPLen - 1) {
                    pTagArr.push(pTagGrp);
                    pTagGrp = [];
                }
            }

            let wrappedArray = pTagArr.map((group, index) => {
                // ù ��° �迭�� ���� �ٸ� ������� ���α�
                //if (index === 0) {
                //    return [parentTagStart, ...group, parentTagEnd].join('');
                //}
            
                // ������ �迭�� ������ �����ϰ� ���α�
                return [parentTagStart2, ...group, parentTagEnd].join('');
            });

            $("#viewWrap").html(wrappedArray.join(''));

            arrP = document.querySelectorAll("#viewWrap p");
            arrPLen = arrP.length;

            let pageCnt = 0;

            for (let i = 0; i < arrPLen; i++) {
                $("#viewWrap .aside_line_count:eq(" + pageCnt + ")").append(`<span>${i + 1}</span>`);

                if ((i+1) % 34 == 0) {
                    pageCnt++;
                }
            }

            $("#pageWrap, #hiddenWrap").hide();
            $("#viewWrap").show();
            //window.print();

            html2canvas(document.querySelector("#viewWrap")).then(canvas => {
            // base64 url �� ��ȯ
            var imgData = canvas.toDataURL('image/png');

            var imgWidth = 210; // �̹��� ���� ����(mm) A4 ����
            var pageHeight = imgWidth * 1.414; // ��� ������ ���� ���� ��� A4 ����
            var imgHeight = canvas.height * imgWidth / canvas.width;
            var heightLeft = imgHeight;
            var margin = 20;

            var doc = new jsPDF('p', 'mm', 'a4');
            var position = 0;

            // ù ������ ���
            doc.addImage(imgData, 'png', margin, position, imgWidth, imgHeight);
            heightLeft -= pageHeight;

            // �� ������ �̻��� ��� ���� ���鼭 ���
            while (heightLeft >= 20) {
                position = heightLeft - imgHeight;
                doc.addPage();
                doc.addImage(imgData, 'png', margin, position, imgWidth, imgHeight);
                heightLeft -= pageHeight;
            }

            // ���� ����
            doc.save('sample.pdf');
            });
        }

        window.onafterprint = function() {
            $("#pageWrap, #hiddenWrap").show();
            $("#pageWrap").html($("#pageWrap").html().replace(/\[[br]\]/g, '<br data-cke-filler="true">'));
            $("#viewWrap").hide();
        }
    </script>

</html>
