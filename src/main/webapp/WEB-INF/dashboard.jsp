<%--
  Created by IntelliJ IDEA.
  User: anant
  Date: 26-03-2024
  Time: 13:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href='https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/ css/bootstrap.min.css'>
    <link rel="stylesheet" href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css'>
    <c:url value="../css/main.css" var="jstlllCss"/>
    <link href="${jstlllCss}" rel="stylesheet">
    <script src="../js/bootstrap.bundle.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
    <title>DashBoard</title>
</head>
<body   >
<header class="main-page-header mb-3 ">
    <div class="container">
        <div  id="1" class="company name">
            ARGENTARii...
        </div>
        <nav class="navigation">
            <li><a href="">DashBoard</a></li>
            <li><a href="">Payment History</a></li>
            <li><a href="">Transaction</a></li>
        </nav>

        <div class="display-name ms-auto text-black">
            <i id="Welcome" class=" fa fa-circle text-success me-2  "></i> Welcome <span>Anant</span>
        </div>
        <!-- logout start -->
        <a id="sgn" href="" class="btn btn-sn ">
            <i class="fas  fa-sign-out-alt me-2"></i> Sign Out
            <!-- logout End -->
        </a>
    </div>
</header>
<!-- container -->
<!--  transact offcanvas body start-->
<div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasExample" aria-labelledby="offcanvasExampleLabel">
    <div class="offcanvas-header">
        <h5 class="offcanvas-title " id="offcanvasExampleLabel">Transact </h5>
        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>

    <!----offcanvas transact body start --->
    <div class="offcanvas-body">
        <small class="card-text">
            Choose an Option below to perform a Transaction
        </small>
        <select name="transact-type" class="form-control my-3" id="transact-type">
            <option value="">---Select Transaction Type---</option>
            <option value="payment">Payment</option>
            <option value="transfer">Transfer</option>
            <option value="deposit">Deposit</option>
            <option value="withdraw">Withdraw</option>
        </select>

        <!-- start of payment card -->
        <div id="hacc" class="card payment-card">
            <!-- card body -->
            <div class="card-body">
                <!-- form -->
                <!-- 1.... -->
                <div class="form-group mb-2">
                    <label for="">Accounts Holder/ Beneficiary</label>
                    <input type="text" name="Beneficiary" class="form-control" placeholder="Enter Account Holder's / Beneficiary's Name">
                </div>
                <!-- 2....  -->
                <div class="form-group mb-3">
                    <label for="">Accounts Holder/ Beneficiary Number</label>
                    <input type="text" name="Account_Number"  class="form-control" placeholder="Enter Account Holder's / Beneficiary's Number">
                </div>
                <!-- form -->
                <!-- form group -->
                <div class="form-group">
                    <!-- Select Account Option -->
                    <select name="account_id" class="form-control my-3" id="">
                        <option value="">--Select Account--</option>
                    </select>
                    <!-- Select Account Option -->
                </div>
                <!-- form group end -->

                <div class="form-group mb-2">
                    <label for="">Reference</label>
                    <input type="text" name="reference" class="form-control"placeholder="Enter Reference">
                </div>
                <!-- 2....  -->
                <div class="form-group mb-3">
                    <label for="">Enter Payment Amount</label>
                    <input type="text" name="payment_amount" class="form-control" placeholder="Enter Payment Amount">
                </div>
                <!-- form -->
                <!-- form group -->
                <div class="form-group mb-3">
                    <button id="transact-btn" class="btn btn-lg">Pay</button>
                </div>
            </div>
            <!-- card body -->
        </div>
        <!-- Start of transfer card -->
        <div id="htrans" class="card transfer-card">
            <!-- card body -->
            <div class="card-body">
                <div class="form-group">
                    <!-- Select Account Option -->
                    <select name="account_id" class="form-control my-3" id="">
                        <option value="">--Select Account--</option>
                    </select>
                    <!-- Select Account Option -->
                </div>
                <!-- form group end -->

                <div class="form-group">
                    <!-- Select Account Option -->
                    <select name="account_id" class="form-control my-3" id="">
                        <option value="">--Select Account--</option>
                    </select>
                    <!-- Select Account Option -->
                </div>





                <!-- 2....  -->
                <div class="form-group mb-3">
                    <label for="">Enter transfer Amount</label>
                    <input type="text" name="transfer_amount" class="form-control" placeholder="Enter transfer Amount">
                </div>
                <!-- form -->
                <!-- form group -->
                <div class="form-group mb-3">
                    <button id="transact-btn" class="btn btn-lg">Transfer</button>
                </div>
            </div>
            <!-- card body -->
        </div>
        <!-- end of transfer card -->


        <!-- Start of deposit card -->
        <div id="hdepo" class="card deposit-card">
            <!-- card body -->
            <div class="card-body">

                <form action="" class="deposit-form">

                    <div class="form-group mb-2">
                        <label for="">Enter Deposit Amount</label>
                        <input type="text" name="deposit_amount" class="form-control" placeholder="Enter Deposit Amount">
                    </div>


                    <div class="form-group">
                        <!-- Select Account Option -->
                        <select name="account_id" class="form-control my-3" id="">
                            <option value="">--Select Account--</option>
                        </select>
                        <!-- Select Account Option -->
                    </div>

                    <!-- form group -->
                    <div class="form-group my-3">
                        <button id="transact-btn" class="btn btn-lg">deposit</button>
                    </div>
                </form>

            </div>
            <!-- card body -->
        </div>
        <!-- end of deposit card -->


        <!-- Start of withdraw card -->
        <div id="hw" class="card withdraw-card">
            <!-- card body -->
            <div class="card-body">

                <form action="" class="withdraw-form">

                    <div class="form-group mb-2">
                        <label for="">Enter withdrawal Amount</label>
                        <input type="text" name="withdrawal_amount" class="form-control" placeholder="Enter withdrawal Amount">
                    </div>


                    <div class="form-group">
                        <!-- Select Account Option -->
                        <select name="account_id" class="form-control my-3" id="">
                            <option value="">--Select Account--</option>
                        </select>
                        <!-- Select Account Option -->
                    </div>

                    <!-- form group -->
                    <div class="form-group my-3">
                        <button id="transact-btn" class="btn btn-lg">withdraw</button>
                    </div>
                </form>

            </div>
            <!-- card body -->
        </div>
        <!-- end of withdraw card -->



    </div>
</div>
<!----offcanvas transact body end--->


<!--right side container :: Account form container -->
<div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasRight" aria-labelledby="offcanvasRightLabel">
    <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasRightLabel">Create/Add Account</h5>
        <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body">
        <!-- Card::Account Form Start -->

        <div class="card">
            <!-- card-body start -->
            <div class="card-body">
                <form action="" class="add-account-form">
                    <!-- form group start -->
                    <div class="form-group mb-3" >
                        <label for="">Enter Account Name</label>
                        <input type="text" name="account_name" class="form-control" placeholder="Enter  Account  Name">
                    </div>
                    <!-- form group ends -->



                    <!-- form group start -->
                    <div class="form-group mb-3">
                        <label for="">Select Account Type</label>
                        <select name="account_type" id="">
                            <option value="">--Select Account Type --</option>
                            <option value="check">Check</option>
                            <option value="check">Savings</option>
                            <option value="check">Business</option>

                        </select>
                    </div>
                    <!-- form group ends -->

                    <div class="form-control my-2">
                        <button id="addAcc" class="btn btn-md btn-primary">Add Account</button>
                    </div>

                </form>
            </div>


            <!-- card-body start -->
        </div>



        <!-- Card::Account Form Ends -->



    </div>
</div>
<!-- Account form container ends here -->

<!-- end of OffCanvas -->
</div>
<div class="container d-flex">
    <!-- default offcanvas -->
    <!--- container second---->

    <button  id="add-acc-btn" class="btn btn-lg shadow" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight" aria-controls="offcanvasRight">
        <i  class="fa fa-credit-card"></i>   Add New Account
    </button>

    <!-----container second end-->
    <!--track-->
    <!------Transaction  button-------->
    <button id="transact-btn" class="btn btn-lg ms-auto shadow" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasExample" aria-controls="offcanvasExample">
        <i  class="fa fa-wallet"></i>  Transact
    </button>
    <!------Transaction  button End -------->
</div>
<!-- containerEnds  -->
<div class="container d-flex py-3">
    <h2 class="me-auto"> Total Accounts Balance :</h2>
    <h2 class="ms-auto">0.00</h2>
</div>

<!-- Accordian comtainer menu STARTS -->
<div class="container">
    <!--DropDown Menu-->
    <div class="accordion" id="accordionExample">
        <div class="accordion-item">
            <h2 class="accordion-header">
                <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne"
                        aria-expanded="true" aria-controls="collapseOne">
                    Accordion Item #1
                </button>
            </h2>
            <div id="collapseOne" class="accordion-collapse collapse show" data-bs-parent="#accordionExample">
                <div class="accordion-body">
                    <strong>This is the first item's accordion body.</strong> It is shown by default, until the collapse
                    plugin adds the appropriate classes that we use to style each element. These classes control the overall
                    appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with
                    custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go
                    within the <code>.accordion-body</code>, though the transition does limit overflow.
                </div>
            </div>
        </div>
        <div class="accordion-item">
            <h2 class="accordion-header">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                        data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                    Accordion Item #2
                </button>
            </h2>
            <div id="collapseTwo" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                <div class="accordion-body">
                    <strong>This is the second item's accordion body.</strong> It is hidden by default, until the collapse
                    plugin adds the appropriate classes that we use to style each element. These classes control the overall
                    appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with
                    custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go
                    within the <code>.accordion-body</code>, though the transition does limit overflow.
                </div>
            </div>
        </div>
        <div class="accordion-item">
            <h2 class="accordion-header">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                        data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                    Accordion Item #3
                </button>
            </h2>
            <div id="collapseThree" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                <div class="accordion-body">
                    <strong>This is the third item's accordion body.</strong> It is hidden by default, until the collapse
                    plugin adds the appropriate classes that we use to style each element. These classes control the overall
                    appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with
                    custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go
                    within the <code>.accordion-body</code>, though the transition does limit overflow.
                </div>
            </div>
        </div>
    </div>
    <!--DropDown Menu-->
</div>
<!-- Accordian comtainer menu ENDS -->

<!-- No accounts Starts   -->

<div class="container">
    <!-- card no accounts -->
    <div class="card no-account-card">
        <!-- card body -->
        <div class="card-body">
            <h1  class="card-title">
                <i class="fas fa-ban text-danger"></i>
                No Registered Accounts
            </h1>
            <div class="card-text" >
                You currently do not have any Registered. <br>
                Please click below the to Add new Account

            </div>
            <br>
            <button id="" class="btn  btn-primary btn-sm shadow" type="button" data-bs-toggle="offcanvas"
                    data-bs-target="#offcanvasRight" aria-controls="offcanvasRight">
                <i class="fa fa-credit-card"></i> Add New Account
            </button>
        </div>

        <!-- card body -->
    </div>
    <!-- card no accounts -->
</div>


<!-- No accounts Starts -->

<script  src="../js/main.js"></script>
</body>
</html>
