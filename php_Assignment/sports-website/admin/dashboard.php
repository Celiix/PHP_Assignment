<?php
include '../admin/head.php';
include '../admin/header.php';
include '../admin/sidebar.php';
if($_SESSION['loggedinuserrole']=="User") {
    header('Location: ../index.php');
    die();
}
?>
<?php

if (isset($_SESSION['role']) == 'Admin') {
    header("location: admin/dashboard.php");
} elseif (isset($_SESSION['role']) == 'User') {
    header("location: ../index.php");
}
?>
<!DOCTYPE html>
<html lang="en">

    
<div id="layoutSidenav">
    <div id="layoutSidenav_content">
        <main>
            <header class="page-header page-header-dark bg-gradient-primary-to-secondary pb-10">
                <div class="container-xl px-4">
                    <div class="page-header-content pt-4">
                        <div class="row align-items-center justify-content-between">
                            <div class="col-auto mt-4">
                                <h1 class="page-header-title">
                                    <div class="page-header-icon"><i data-feather="activity"></i></div>
                                    Dashboard
                                </h1>
                            </div>
                            <div class="col-12 col-xl-auto mt-4">
                            </div>
                        </div>
                    </div>
                </div>
            </header>
            <!-- Main page content-->
            <div class="container-xl px-4 mt-n10">
                <div class="row">
                    <div class="col-xxl-12 col-xl-12 mb-4">
                        <div class="card h-100">
                            <div class="card-body h-100 p-5">
                                <div class="row align-items-center">
                                    <div class="col-xl-8 col-xxl-12">
                                        <div class="text-center text-xl-start text-xxl-center mb-4 mb-xl-0 mb-xxl-4">
                                            <h1 class="text-primary">Welcome to the Sports Gear Website - Admin!</h1>
                                            <p>Here in this area you can add, delete, edit and view the users and products!</p>
                                            <p>Another feature you can do as a Admin is view any queries from the users.</p>
                                        </div>
                                    </div>
                                    <div class="col-xl-4 col-xxl-12 text-center"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <?php
        include '../admin/footer.php';
        ?>
    </div>

</div>
</html>> 