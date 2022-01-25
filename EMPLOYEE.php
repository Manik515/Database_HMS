<html>
	<body>
		<head>
			<title>Accountant</title>
	
			<style>
				.container{
					background: url(images/hospital.jpg);
					min-width: 100%;
					min-height: 100vh;
					background-size: cover;
					background-attachment: fixed;
					
				}
				.header{
				   border-radius: 10px;
				   text-align: center;
				   padding: 5px;
				   margin-bottom: 30px;
				   background-color: blueviolet; 
			    }
				.header h1{
					font-size: 30px;
					color: black;
				}
				.main form table{
					align: center;
					margin:auto;
				}

				table,td,th{ 
					border: none;
					color: black;
					font-size: 20px;
					border-collapse: collapse;
					padding: 10px;
				}
				table{
					width: 50%;
					height: 350px; 
				}
			</style>
		</head>
		<body>
			<div class= container>	
				<div class= header>
				   <h1>Employee History</h1>
				</div>				
				
				<div class= main>
						<form  action="" method="post">
                            <table>
                                    <tr> <td>EMPLOYEE ID</td> <td><input type="text" name="ID"></td> </tr>
                                    <tr> <td>EMAIL</td> <td><input type="text" name="EMAIL"></td> </tr>
                                    <tr> <td>NAME</td> <td><input type="text" name="NAME"></td> </tr>
                                    <tr> <td>ADDRESS</td> <td><input type="text" name="ADDRESS"></td> </tr>
                                    <tr> <td>GENDER</td> <td><input type="text" name="GENDER"></td> </tr>
                                    <tr> <td>PHONE NUMBER</td> <td><input type="text" name="PHONE_NO"></td> </tr>
                                    <tr> <td>DEPARTMENT NAME</td> <td><input type="text" name="DEPT_NAME"></td> </tr>
                                    <tr> <td></td> <td><input type="submit" name="submit" style="height: 50px; width:180px; background-color: green; font-size: 20px; padding: 10px" ></td> </tr>
                                </table>
						</form>
				</div>

			</div>
       </body>
</html>
