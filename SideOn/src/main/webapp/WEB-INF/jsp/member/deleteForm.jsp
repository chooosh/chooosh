<!DOCTYPE html>
<html lang="en">

<head>
	<%@ include file="../inc/adminHeadLink.jsp" %>
    <title>Delete Account</title>
</head>

<body class="" style="background-color: #FFD026">

    <div class="container">

        <!-- Outer Row -->
        <div class="row justify-content-center">

            <div class="col-xl-10 col-lg-6 col-md-9">

                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">
                        <!-- Nested Row within Card Body -->
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-4">Delete Member</h1>
                                    </div>
                                    <form class="user" action="deleteMember">
                                        <div class="form-group">
                                            <input type="text" class="form-control form-control-user"
                                                id="memberId" name="memberId" aria-describedby="emailHelp"
                                                placeholder="Enter your Id...">
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control form-control-user"
                                                id="memberPw" name="memberPw" placeholder="Password">
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control form-control-user"
                                                id="memberPwChk" name="memberPwChk" placeholder="Password check">
                                        </div>
                                        <hr>
                                        <input type="reset" value="Cancel and return to site" class="btn btn-primary btn-user btn-block"  style="background-color: #18ab76">
                                        <hr>
                                        <input type="submit" value="Delete Account" class="btn btn-google btn-user btn-block">
                                        
                                    </form>
                                    <hr>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>

    </div>

    <%@ include file="../inc/adminBodyLink.jsp" %>
</body>

</html>