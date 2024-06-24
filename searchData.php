<?php
    require('dbconnect.php');
    $search = $_POST["search"];

    $sql = "SELECT * FROM students 
    WHERE fname LIKE '%$search%' 
    or prefix LIKE '%$search%' 
    or lname LIKE '%$search%' 
    or class LIKE '%$search%' 
    or id LIKE '%$search%' 
    ORDER BY prefix DESC, id ASC";
    $result = $conn->query($sql);
    
    $count = mysqli_num_rows($result);
    $order = 1;

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <title>โปรแกรมดาวน์โหลดเกียรติบัตรออนไลน์</title>
    
    <!-- Font Support -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=K2D:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800&display=swap" rel="stylesheet">

    <!-- CSS Link -->
    <link rel="stylesheet" href="assets/style.css">

    <!-- Font Awesome Link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
    <nav class="navbar navbar-expand-lg fixed-top navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand" href="#"><img src="https://www.bpk.ac.th/bpknews/assets/images/img/logobaner.png" width="300" height="70" class="d-inline-block align-top" alt=""></a>
        <button class="navbar-toggler collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavId" aria-controls="collapsibleNavId" aria-expanded="false" aria-label="Toggle Navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
            <div class="collapse navbar-collapse" id="collapsibleNavId">
                <ul class="navbar-nav me-auto mt-2 mt-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" href="https://www.bpk.ac.th/bpknews" aria-current="page"><u>กลับสู่หน้าหลัก</u><span class="visually-hidden">(current)</span></a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container py-5">
        <div class="mt-3">
            <div class="pt-5 my-5 text-center">
                <h3>โปรแกรมดาวน์โหลดเกียรติบัตรออนไลน์ โรงเรียนบางปะกอกวิทยาคม</h3>
            </div>
           <form action="searchData.php" method="post">
                <div class="pt-2 text-center">  
                    <div class="col-xs-2">
                        <input
                            type="text"
                            class="form-control"
                            name="search"
                            id="search-box"
                            placeholder="ค้นหารายชื่อ (สามารถค้นโดยใช้เลขประจำตัวนักเรียน ชื่อ-นามสกุล หรือระดับชั้นได้)"
                            value="<?php echo $search?>"
                            required/>
                    </div>
                    <div class="search mt-5">
                        <button type="submit" name="submit-form" class="btn btn-dark px-3" id="btn-search">ค้นหา
                            <i class="fas fa-magnifying-glass"></i>
                        </button>
                        <a href="index.php" class="btn btn-success">กลับหน้าแรก</a>
                    </div>
                </div>
           </form>
        </div>
    </div>

    <?php if ($count > 0) {?>
    <div class="container pb-4 px-2" id="table-result">
        <table class="table table-bordered table-striped text-center">
            <thead>
                <tr>
                    <th>ลำดับที่</th>
                    <th style="width: 11.92%;">เลขประจำตัวนักเรียน</th>
                    <th>ชื่อ - นามสกุล</th>
                    <th>ระดับชั้น</th>
                    <th>ลิงก์เกียรติบัตร</th>
                </tr>
            </thead>
            <tbody>
            <?php while ($row = mysqli_fetch_assoc($result)) {?>
                <tr>
                    <td><?php echo $order++?></td>
                    <td><?php echo $row["id"]?></td>
                    <td><?php echo $row["prefix"].$row["fname"]." ".$row["lname"]?></td>
                    <td><?php echo $row["class"]?></td>
                    <td><a href="<?php echo $row["link"]; ?>" target="_blank">ดาวน์โหลด</a></td>
                </tr>
                <?php }?>
            </tbody>
        </table>
    </div>
    <?php } else { ?>
            <div class="container">
                <div class="alert alert-danger" role="alert"><b>ไม่พบข้อมูลนักเรียนที่ค้นหา!</b></div>
            </div>  
    <?php } ?>
    
    <body class="d-flex flex-column min-vh-100">
        <div class="wrapper flex-grow-1"></div>
            <footer class="text-white text-center py-2 bg-dark px-5">
                <p class="mt-3"><b>จัดทำโดย</b>
                    <li>นายสรวิชญ์ สิทธิบวรสกุล ม.6/10 เลขที่ 11</li>
                    <li>นายวงศ์วริศ ชัยกุลประดิษฐ์ ม.6/10 เลขที่ 13</li>
                </p>
            </footer>
    </body>
</body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</html>
