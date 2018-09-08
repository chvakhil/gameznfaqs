<html>
    <head>
        <title>Notifications</title>
        <meta name="viewport" content="width=device-width, initial-scale=0">
        <link rel="stylesheet" type="text/css" href="styles.css">
    </head>
    <%@page import = "java.sql.*" %>
    <body>
        <div class="main_header">
            <div class="logo"><img src="logo2.PNG"></div>
            <div class="nav-bar">
                <ul>
                    <li><a  href="index.html">Home</a></li>
                    <li><a class="active" href="Notifications_display.jsp">Notifications</a></li>
                    <li><a href="#contact">Contact</a></li>
                    <li><a href="#about">About</a></li>
                    <li style="float:right"><a href="#joinus">Join Us</a></li>
                </ul>
            </div>
        </div>
            <%  java.sql.Connection con = null;
                try {
                    Class.forName("com.mysql.jdbc.Driver");

                    String url = "jdbc:mysql://sql12.freemysqlhosting.net:3306/sql12255801";
                    con = DriverManager.getConnection(url, "sql12255801", "3JPT57hvjn");
                } catch (Exception e) {
                    System.out.println(e);
                }
            %>
        </div>

        <%
            Statement stmt = (Statement) con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM notif;");

        %>
        <div class="one1">
        <h5>:::::::NOTIFICATIONS:::::::</h5>
        </div>
        <div class="notif_page">
            <table class="table1">
                <tr>
                    <th class="th1">ID</th>
                    <th class="th1">DATE</th>
                    <th>NOTIFICATION</th>
                    <th>LINK</th>
                </tr>
                <%while (rs.next()) { %>
                <tr>
                    <td class="td1"><% out.print(rs.getString(1)); %></td>
                    <td class="td1"><% out.print(rs.getString(2)); %></td>
                    <td><div class="notif12"> <% out.print(rs.getString(3)); %> </td>
                    <td style="border-right: none"><% out.print(rs.getString(4)); %></td>
                </tr>
                
               <% } %> </div>
            
                
            </table>       
        </div>

        <% con.close();%>

    </body>

</html>
