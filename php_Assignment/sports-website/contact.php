<?php
include('header.php')
?>
<?php
if(isset($_POST['name']) && isset($_POST['email']) && isset($_POST['message'])){
    $name = $_POST['name'];
    $email = $_POST['email'];
    $message = $_POST['message'];
    $query = "INSERT INTO contact (name, email, message) VALUES ('$name', '$email', '$message')";
    $result = mysqli_query($db, $query);
    if($result){
        echo "<script>alert('Message sent successfully')</script>";
    }else{
        echo "<script>alert('Message has not sent, try again')</script>";
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<!-- contact page -->
<div class = "container">
    <div class = "row" >
        <div class = "col-md-12  mt-3 " >
            <h1 class = "text-center mt-3" > Contact Us </h1>
        </div>
    </div>
    <div class = "row" >
        <div class = "col-md-12" >
            <form action = "contact.php" method = "post" >
                <div class = "form-group" >
                    <label for = "name" > Name </label>
                    <input type = "text"
                    class = "form-control"
                    id = "name"
                    name = "name"
                    placeholder = "Enter your name" >
                </div>
                <div class = "form-group" >
                    <label for = "email" > Email </label>
                    <input type = "email"
                    class = "form-control"
                    id = "email"
                    name = "email"
                    placeholder = "Enter your email" >
                </div>
                <div class = "form-group" >
                    <label for = "message" > Message </label>
                    <textarea class = "form-control"
                    id = "message"
                    name = "message"
                    rows = "3" > </textarea>
                </div>
                <button type = "submit"
                class = "btn btn-primary" > Submit </button>
            </form>
        </div>
    </div>
</html>